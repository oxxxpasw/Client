import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/models/user_data_response/user_data_response.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class AuthService {
  Future<DefaultResponse<void>> sendVerifyByPhone({
    required String phone,
    required String? appSignature,
  });

  Future<DefaultResponse<User>> getTokenByPhone({
    required String phone,
    required String code,
  });

  Future<DefaultResponse<UserDataResponse>> getUserInfo({
    required String token,
  });

  Future<DefaultResponse<void>> updateUserInfo({
    required String token,
    required Map<String, dynamic> userInfo,
  });

  Future<DefaultResponse<User>> getUser({
    required String token,
  });

  Future<DefaultResponse<void>> deleteUser({
    required String token,
  });
}

@Singleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl(
    @Named(InjectableNames.authServiceClient) this._dioJsonRpc,
    @Named(InjectableNames.authServiceClient) this._dioJsonRpcErrorHandler,
    this._appEnvironment,
  );

  final Dio _dioJsonRpc;
  final DioErrorHandler<DefaultApiError> _dioJsonRpcErrorHandler;
  final AppEnvironment _appEnvironment;

  @override
  Future<DefaultResponse<void>> sendVerifyByPhone({
    required String phone,
    required String? appSignature,
  }) async {
    final response = await _jsonRpc(
      method: 'sendVerifyByPhone',
      data: [
        phone,
        if (appSignature != null) ...[null, appSignature]
      ],
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return const ApiResponse.success(null);
  }

  @override
  Future<DefaultResponse<User>> getTokenByPhone({
    required String phone,
    required String code,
  }) async {
    final response =
        await _jsonRpc(method: 'getTokenByPhone', data: [phone, code]);

    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(User.fromJson(response.result));
  }

  @override
  Future<DefaultResponse<UserDataResponse>> getUserInfo({
    required String token,
  }) async {
    try {
      final response =
          await _jsonRpc(method: 'getAdditionalInfo', data: [token]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(UserDataResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> updateUserInfo({
    required String token,
    required Map<String, dynamic> userInfo,
  }) async {
    final response =
        await _jsonRpc(method: 'updateAdditionalInfo', data: [token, userInfo]);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return const ApiResponse.success(null);
  }

  @override
  Future<DefaultResponse<User>> getUser({
    required String token,
  }) async {
    final response = await _jsonRpc(method: 'getTokenData', data: [token]);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(User.fromJson(response.result));
  }

  @override
  Future<DefaultResponse<void>> deleteUser({required String token}) async {
    try {
      final response = await _jsonRpc(method: 'deleteUserData', data: [token]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<DefaultResponse<dynamic>> _jsonRpc(
      {required String method,
      required List data,
      Map<String, String>? headers}) async {
    try {
      var response = await _dioJsonRpcErrorHandler.processRequest<Response>(
        () => _dioJsonRpc.post(
          'tnt',
          data: {
            'jsonrpc': '2.0',
            'method': method,
            'params': [_appEnvironment.systemId, ...data],
            'id': const Uuid().v4(),
          },
          options: Options(headers: headers),
        ),
        true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.data['result'][0]['data']);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  void close() {}
}
