import 'dart:async';
import 'dart:io';

import 'package:sosedifedi/data/mappers/user_data_model_mapper.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/models/user_data_response/user_data_response.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/auth_service.dart';
import 'package:sosedifedi/data/services/input_phone_service.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/data/services/token_service.dart';
import 'package:sosedifedi/domain/models/phone/phone.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sms_autofill/sms_autofill.dart';

@singleton
class AuthRepository {
  AuthRepository({
    required this.authService,
    required this.inputPhoneService,
    required this.tokenService,
    required this.userDataMapper,
    required this.analystService,
  })  : _tokenSubject = BehaviorSubject<AuthData?>(),
        _tempTokenSubject = BehaviorSubject<AuthData?>(),
        _userDataSubject = BehaviorSubject<UserData?>() {
    if (Platform.isAndroid) {
      SmsAutoFill().getAppSignature.then((signature) {
        _appSignature = signature;
      });
    }
  }

  @protected
  final AuthService authService;
  @protected
  final InputPhoneService inputPhoneService;
  @protected
  final TokenService tokenService;
  @protected
  final UserDataModelMapper userDataMapper;
  @protected
  final AnalystService analystService;

  String? _appSignature;

  final BehaviorSubject<AuthData?> _tokenSubject;
  final BehaviorSubject<AuthData?> _tempTokenSubject;
  final BehaviorSubject<UserData?> _userDataSubject;

  Stream<AuthData?> get tokenStream => _tokenSubject.stream;

  Stream<AuthData?> get tempTokenStream => _tempTokenSubject.stream;

  Stream<UserData?> get userDataStream => _userDataSubject.stream;

  Future<String?> get token {
    if (_tokenSubject.hasValue) {
      return SynchronousFuture(_tokenSubject.valueOrNull?.user.token);
    }
    return checkToken();
  }

  AuthData? get authData => _tokenSubject.valueOrNull;

  Future<DefaultResponse<UserData?>> getUserData() async {
    final response = await checkUserData(
      _tokenSubject.valueOrNull?.user ?? _tempTokenSubject.valueOrNull?.user,
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  Future<Phone> formatPhone(String newPhone) {
    return inputPhoneService.formatPhone(newPhone);
  }

  ///If error returns error description
  Future<ApiResponse<CommonResponseError, bool>> submitPhone(
      String phone) async {
    final response = await authService.sendVerifyByPhone(
      phone: phone,
      appSignature: _appSignature,
    );
    if (response.isSuccess) {
      return const ApiResponse.success(true);
    }
    return ApiResponse.error(response.error);
  }

  ///If error returns error description
  Future<DefaultResponse<bool>> submitCode(String phone, String code) async {
    final response =
        await authService.getTokenByPhone(phone: phone, code: code);
    if (response.isSuccess) {
      _tempTokenSubject.sink.add(
        AuthData(
          user: response.result,
        ),
      );
      return const ApiResponse.success(true);
    }
    return ApiResponse.error(response.error);
  }

  Future<String?> checkToken() async {
    final data = await _getAuthData();
    if (data.hasError) {
      _tokenSubject.add(null);
      return null;
    }
    if (data.result != _tokenSubject.valueOrNull) {
      _tokenSubject.add(data.result);
    }
    return data.result?.user.token;
  }

  Future<DefaultResponse<AuthData?>> _getAuthData() async {
    try {
      final token = await tokenService.getToken();
      if (token == null) {
        return const ApiResponse.success(null);
      }

      final futures = [
        authService.getUser(
          token: token,
        ),
        authService.getUserInfo(token: token),
      ];

      final result = await Future.wait(futures);
      final userResponse = result[0] as DefaultResponse<User>;
      final userDataResponse = result[1] as DefaultResponse<UserDataResponse>;
      if (userResponse.hasError) {
        final authError = userResponse.error.safeCustom;
        if (authError != null && authError.code == '334') {
          await tokenService.deleteToken();
        }
        return ApiResponse.error(userResponse.error);
      }
      return ApiResponse.success(
        AuthData(
          user: userResponse.result,
          userData: userDataResponse.isSuccess
              ? userDataMapper.mapFromUserDataResponse(
                  userDataResponse: userDataResponse.result,
                  phone: userResponse.result.mobileNumber,
                )
              : null,
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<ApiResponse<CommonResponseError, bool>> saveTempToken() async {
    final authData = _tempTokenSubject.valueOrNull ?? _tokenSubject.valueOrNull;
    if (authData == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    var userData = _userDataSubject.valueOrNull;
    if (userData == null) {
      final response = await checkUserData(authData.user);
      userData = response.isSuccess ? response.result : userData;
    }
    await tokenService.setToken(authData.user.token);

    _tokenSubject.sink.add(
      authData.copyWith(
        userData: userData,
      ),
    );
    final fcmToken = PushNotificationService.fcmToken;
    if (fcmToken != null) {
      await authService.updateUserInfo(
        token: authData.user.token,
        userInfo: {'fcmToken': fcmToken},
      );
    }
    return const ApiResponse.success(true);
  }

  Future<void> logout() async {
    bool isDelete = await tokenService.deleteToken();
    if (isDelete) {
      _tokenSubject.sink.add(null);
      _userDataSubject.add(null);
    }
  }

  Future<DefaultResponse<UserData?>> checkUserData(User? user) async {
    try {
      if (user == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await authService.getUserInfo(token: user.token);
      UserDataResponse userData;
      if (response.isSuccess) {
        userData = response.result;
      }
      //Когда данных по пользователю нет выдает ошибку empty additional info с кодом 45.
      else if (response.hasError && response.error.safeCustom?.code == '45') {
        userData = const UserDataResponse();
      } else {
        return ApiResponse.error(response.error);
      }
      final userDataModel = userDataMapper.mapFromUserDataResponse(
        userDataResponse: userData,
        phone: user.mobileNumber,
      );
      _userDataSubject.sink.add(userDataModel);
      return ApiResponse.success(userDataModel);
    } catch (e) {
      _userDataSubject.sink.add(null);
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Инициализация репозитория авторизации
  Future<void> init() async {
    try {
      final fireBaseResponse = await PushNotificationService.initialise();
      if (fireBaseResponse.hasError) {
        analystService.error(fireBaseResponse.error.toString());
      }
      final authResponse = await _getAuthData();
      if (authResponse.hasError) {
        _tokenSubject.add(null);
        analystService.error(authResponse.error.toString());
        return;
      }
      final data = authResponse.result;
      _tokenSubject.add(data);
      if (data != null &&
          fireBaseResponse.isSuccess &&
          fireBaseResponse.result != null) {
        final response = await authService.updateUserInfo(
          token: data.user.token,
          userInfo: {'fcmToken': fireBaseResponse.result},
        );
        if (response.hasError) {
          analystService.error(response.error.toString());
        }
      }
    } catch (e, stack) {
      if (!_tokenSubject.hasValue) {
        _tokenSubject.add(null);
      }
      analystService.error('$e\n$stack');
    }
  }

  Future<DefaultResponse<UserData?>> updateUserData(UserData userData) async {
    try {
      final currentUser =
          _tempTokenSubject.valueOrNull ?? _tokenSubject.valueOrNull;
      if (currentUser == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final result = await authService.updateUserInfo(
          token: currentUser.user.token,
          userInfo: userDataMapper.mapToUserDataResponse(userData).toJson());
      if (result.hasError) {
        return ApiResponse.error(result.error);
      }
      _userDataSubject.sink.add(userData);
      return ApiResponse.success(userData);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<User?> getUser() async {
    final token = await this.token;
    if (token == null) {
      return null;
    }
    final response = await authService.getUser(token: token);
    if (response.hasError) {
      return null;
    }
    return response.result;
  }

  bool isAuthorized() => _tokenSubject.valueOrNull != null;

  Future<DefaultResponse<void>> deleteAccount() async {
    final token = await this.token;
    if (token == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response = await authService.deleteUser(token: token);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    final bool isDelete = await tokenService.deleteToken();
    if (isDelete) {
      _tokenSubject.sink.add(null);
      _userDataSubject.add(null);
    }
    return const ApiResponse.success(null);
  }

  @disposeMethod
  void dispose() {
    _tempTokenSubject.close();
    _tokenSubject.close();
    _userDataSubject.close();
  }
}
