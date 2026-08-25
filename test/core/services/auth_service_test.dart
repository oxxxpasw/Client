import 'package:sosedifedi/config.dart';
import 'package:sosedifedi/data/http/dio_client_creator.dart';
import 'package:sosedifedi/data/http/dio_client_module.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/services/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../test_data/auth_test_data.dart';

class _DioClientModule extends DioClientModule {}

void main() {
  late AuthService authService;
  late DioAdapter adapter;

  setUp(() {
    final clientModule = _DioClientModule();
    final client = clientModule
        .makeDioAuthServiceClient(DioClientCreatorImpl(testAppEnvironment));
    adapter = DioAdapter(dio: client);
    client.httpClientAdapter = adapter;
    authService = AuthServiceImpl(client,
        clientModule.makeDioJsonRpcErrorTestHandler(), testAppEnvironment);
  });

  group('AuthRepository', () {
    group('sendVerifyByPhone', () {
      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.sendVerifyByPhoneResponseJson);
            },
            data: AuthTestData.sendVerifyByPhoneJson,
          );

          final result = await authService.sendVerifyByPhone(
            phone: AuthTestData.testPhone,
            appSignature: AuthTestData.appSignature,
          );

          expect(result.isSuccess, isTrue);
        },
      );

      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(500, null);
            },
            data: AuthTestData.sendVerifyByPhoneJson,
          );

          final result = await authService.sendVerifyByPhone(
            phone: AuthTestData.testPhone,
            appSignature: AuthTestData.appSignature,
          );

          expect(result.hasError, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.errorResponse);
            },
            data: AuthTestData.sendVerifyByPhoneJson,
          );

          final result = await authService.sendVerifyByPhone(
            phone: AuthTestData.testPhone,
            appSignature: AuthTestData.appSignature,
          );

          expect(result.hasError, isTrue);
        },
      );
    });

    group('getTokenByPhone', () {
      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.getTokenByPhoneResponseJson);
            },
            data: AuthTestData.getTokenByPhoneJson,
          );

          final result = await authService.getTokenByPhone(
            phone: AuthTestData.testPhone,
            code: AuthTestData.testCode,
          );

          expect(result.isSuccess, isTrue);
          expect(result.result, AuthTestData.authData.user);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(500, null);
            },
            data: AuthTestData.getTokenByPhoneJson,
          );

          final result = await authService.getTokenByPhone(
            phone: AuthTestData.testPhone,
            code: AuthTestData.testCode,
          );

          expect(result.hasError, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.errorResponse);
            },
            data: AuthTestData.getTokenByPhoneJson,
          );

          final result = await authService.getTokenByPhone(
            phone: AuthTestData.testPhone,
            code: AuthTestData.testCode,
          );

          expect(result.hasError, isTrue);
        },
      );
    });
    group('getUserInfo', () {
      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.getAdditionalInfoResponseJson);
            },
            data: AuthTestData.getAdditionalInfoJson,
          );

          final result = await authService.getUserInfo(
            token: AuthTestData.token,
          );

          expect(result.isSuccess, isTrue);
          expect(result.result, isA<UserDataResponse>());
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(500, null);
            },
            data: AuthTestData.getAdditionalInfoJson,
          );

          final result = await authService.getUserInfo(
            token: AuthTestData.token,
          );

          expect(result.hasError, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.errorResponse);
            },
            data: AuthTestData.getAdditionalInfoJson,
          );

          final result = await authService.getUserInfo(
            token: AuthTestData.token,
          );

          expect(result.hasError, isTrue);
        },
      );
    });
    group('updateUserInfo', () {
      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.updateAdditionalInfoResponseJson);
            },
            data: AuthTestData.updateAdditionalInfoJson,
          );

          final result = await authService.updateUserInfo(
            token: AuthTestData.token,
            userInfo: AuthTestData.userDataResponse.toJson(),
          );

          expect(result.isSuccess, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(500, null);
            },
            data: AuthTestData.updateAdditionalInfoJson,
          );

          final result = await authService.updateUserInfo(
            token: AuthTestData.token,
            userInfo: AuthTestData.userDataResponse.toJson(),
          );

          expect(result.hasError, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.errorResponse);
            },
            data: AuthTestData.updateAdditionalInfoJson,
          );

          final result = await authService.updateUserInfo(
            token: AuthTestData.token,
            userInfo: AuthTestData.userDataResponse.toJson(),
          );

          expect(result.hasError, isTrue);
        },
      );
    });
    group('getUser', () {
      test(
        'should return ApiResponse.success',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.getTokenDataResponseJson);
            },
            data: AuthTestData.getTokenData,
          );

          final result = await authService.getUser(
            token: AuthTestData.token,
          );

          expect(result.isSuccess, isTrue);
          expect(result.result, AuthTestData.authData.user);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(500, null);
            },
            data: AuthTestData.getTokenData,
          );

          final result = await authService.getUser(
            token: AuthTestData.token,
          );

          expect(result.hasError, isTrue);
        },
      );

      test(
        'should return ApiResponse.error',
        () async {
          adapter.onPost(
            'tnt',
            (server) {
              server.reply(200, AuthTestData.errorResponse);
            },
            data: AuthTestData.getTokenData,
          );

          final result = await authService.getUser(
            token: AuthTestData.token,
          );

          expect(result.hasError, isTrue);
        },
      );
    });
  });
}
