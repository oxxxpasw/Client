import 'dart:async';

import 'package:sosedifedi/data/mappers/user_data_model_mapper.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/auth_service.dart';
import 'package:sosedifedi/data/services/input_phone_service.dart';
import 'package:sosedifedi/data/services/token_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../test_data/auth_test_data.dart';

class MockAuthService extends Mock implements AuthService {}

class MockTokenService extends Mock implements TokenService {}

class MockInputPhoneService extends Mock implements InputPhoneService {}

void main() {
  late AuthRepository authRepository;
  late AuthService authService;
  late TokenService tokenService;
  late InputPhoneService inputPhoneService;

  setUp(() {
    authService = MockAuthService();
    tokenService = MockTokenService();
    inputPhoneService = MockInputPhoneService();
    authRepository = AuthRepository(
      authService: authService,
      tokenService: tokenService,
      userDataMapper: UserDataModelMapper(),
      inputPhoneService: inputPhoneService,
    );
  });

  tearDown(() {
    authRepository.dispose();
  });

  group('AuthRepository', () {
    group('submitPhone', () {
      test(
        'should return null when ApiResponse is success',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          when(
            () => authService.sendVerifyByPhone(
              phone: any(named: 'phone'),
              appSignature: any(named: 'appSignature'),
            ),
          ).thenAnswer((_) async => fakeResult);
          // ACT
          final result =
              await authRepository.submitPhone(AuthTestData.testPhone);
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result.result, isTrue);
        },
      );

      test(
        'should return DefaultApiError when ApiResponse has error',
        () async {
          // ARRANGE
          DefaultResponse<void> fakeResult = ApiResponse.error(
              CommonResponseError.undefinedError(Exception('testException')));
          when(
            () => authService.sendVerifyByPhone(
              phone: any(named: 'phone'),
              appSignature: any(named: 'appSignature'),
            ),
          ).thenAnswer((_) async => fakeResult);
          // ACT
          final result =
              await authRepository.submitPhone(AuthTestData.testPhone);
          // ASSERT
          expect(result.hasError, isTrue);
        },
      );
    });

    group('submitCode', () {
      late StreamSubscription? subscription;

      tearDown(() {
        subscription?.cancel();
      });
      test(
        'should return true and emit AuthData in tempTokenStream when ApiResponse is success',
        () async {
          // ARRANGE
          DefaultResponse<User> fakeResult =
              ApiResponse.success(AuthTestData.authData.user);
          when(
            () => authService.getTokenByPhone(
              phone: any(named: 'phone'),
              code: any(named: 'code'),
            ),
          ).thenAnswer((_) async => fakeResult);

          // ACT

          subscription = authRepository.tempTokenStream.listen(
            expectAsync1(
              (event) {
                expect(
                  event,
                  AuthData(user: AuthTestData.authData.user),
                );
              },
            ),
          );
          final result = await authRepository.submitCode(
            AuthTestData.testPhone,
            AuthTestData.testCode,
          );
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result.result, isTrue);
        },
      );

      test(
        'should return DefaultApiError when ApiResponse has error',
        () async {
          // ARRANGE
          DefaultResponse<User> fakeResult = ApiResponse.error(
              CommonResponseError.undefinedError(Exception('testException')));
          when(
            () => authService.getTokenByPhone(
              phone: any(named: 'phone'),
              code: any(named: 'code'),
            ),
          ).thenAnswer((_) async => fakeResult);

          // ACT

          subscription = authRepository.tempTokenStream.listen(
            expectAsync1(
              (event) {},
              count: 0,
            ),
          );
          final result = await authRepository.submitCode(
            AuthTestData.testPhone,
            AuthTestData.testCode,
          );
          // ASSERT
          expect(result.hasError, isTrue);
        },
      );
    });

    group('checkToken', () {
      StreamSubscription? subscription;

      tearDown(() {
        subscription?.cancel();
      });
      test(
        'should return token and emit AuthData in tempTokenStream when ApiResponse is success',
        () async {
          // ARRANGE
          when(
            () => authService.getUser(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
              (_) async => ApiResponse.success(AuthTestData.authData.user));

          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
              (_) async => ApiResponse.success(AuthTestData.userDataResponse));

          when(
            () => tokenService.getToken(),
          ).thenAnswer((_) async => AuthTestData.authData.user.token);

          // ACT

          subscription = authRepository.tokenStream.listen(
            expectAsync1(
              (event) {
                expect(
                  event,
                  AuthTestData.authData,
                );
              },
            ),
          );
          final result = await authRepository.checkToken();
          // ASSERT
          expect(result, AuthTestData.authData.user.token);
        },
      );

      test(
        'should return token and emit AuthData in tempTokenStream when ApiResponse is success',
        () async {
          // ARRANGE

          when(
            () => tokenService.getToken(),
          ).thenAnswer((_) async => null);

          // ACT

          subscription = authRepository.tokenStream.listen(
            expectAsync1(
              (event) {
                expect(
                  event,
                  isNull,
                );
              },
            ),
          );
          final result = await authRepository.checkToken();
          // ASSERT
          expect(result, null);
        },
      );

      test(
        'should return null and emit null in tempTokenStream when ApiResponse is success',
        () async {
          // ARRANGE
          when(
            () => authService.getUser(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.error(
              CommonResponseError.undefinedError(
                Exception('testException'),
              ),
            ),
          );

          when(
            () => tokenService.getToken(),
          ).thenAnswer((_) async => AuthTestData.authData.user.token);

          // ACT

          unawaited(
              expectLater(authRepository.tokenStream, neverEmits(anything)));
          final result = await authRepository.checkToken();
          authRepository.dispose();
          // ASSERT
          expect(result, null);
        },
      );
    });

    group('saveTempToken', () {
      late CompositeSubscription subscription;

      setUp(() {
        subscription = CompositeSubscription();
      });

      tearDown(() {
        subscription.cancel();
      });
      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          when(
            () => authService.getTokenByPhone(
              phone: any(named: 'phone'),
              code: any(named: 'code'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.success(AuthTestData.authData.user),
          );

          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.success(AuthTestData.userDataResponse),
          );

          when(
            () => authService.updateUserInfo(
              userInfo: any(named: 'userInfo'),
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => const ApiResponse.success(null),
          );

          when(
            () => tokenService.setToken(any()),
          ).thenAnswer((_) async {});

          // ACT

          subscription.add(
            authRepository.tempTokenStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthData(user: AuthTestData.authData.user),
                  );
                },
              ),
            ),
          );
          subscription.add(
            authRepository.tokenStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthTestData.authData,
                  );
                },
              ),
            ),
          );

          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthTestData.authData.userData,
                  );
                },
              ),
            ),
          );
          await authRepository.submitCode(
            AuthTestData.testPhone,
            AuthTestData.testCode,
          );

          final result = await authRepository.saveTempToken();
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result.result, isTrue);
          expect(authRepository.isAuthorized(), isTrue);
        },
      );

      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          when(
            () => authService.getTokenByPhone(
              phone: any(named: 'phone'),
              code: any(named: 'code'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.success(AuthTestData.authData.user),
          );

          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.error(
              CommonResponseError.undefinedError(
                Exception('testException'),
              ),
            ),
          );

          when(
            () => authService.updateUserInfo(
              userInfo: any(named: 'userInfo'),
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => const ApiResponse.success(null),
          );

          when(
            () => tokenService.setToken(any()),
          ).thenAnswer((_) async {});

          // ACT

          subscription.add(
            authRepository.tempTokenStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthData(user: AuthTestData.authData.user),
                  );
                },
              ),
            ),
          );
          subscription.add(
            authRepository.tokenStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthData(user: AuthTestData.authData.user),
                  );
                },
              ),
            ),
          );

          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {},
                count: 0,
              ),
            ),
          );
          await authRepository.submitCode(
            AuthTestData.testPhone,
            AuthTestData.testCode,
          );

          final result = await authRepository.saveTempToken();
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result.result, isTrue);
          expect(authRepository.isAuthorized(), isTrue);
        },
      );

      test(
        'should return DefaultApiError when tempTokenStream and tokenStream are empty',
        () async {
          // ACT
          await authRepository.saveTempToken();

          final result = await authRepository.saveTempToken();
          // ASSERT
          expect(result.hasError, isTrue);
          expect(authRepository.isAuthorized(), isFalse);
        },
      );
    });

    group('checkUserData', () {
      late CompositeSubscription subscription;

      setUp(() {
        subscription = CompositeSubscription();
      });

      tearDown(() {
        subscription.cancel();
      });
      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.success(AuthTestData.userDataResponse),
          );

          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    AuthTestData.authData.userData,
                  );
                },
              ),
            ),
          );
          final result = await authRepository
              .checkUserData(AuthTestData.authData.user.token);

          expect(result.isSuccess, isTrue);
          expect(result.result, AuthTestData.authData.userData);
        },
      );

      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {},
                count: 0,
              ),
            ),
          );
          final result = await authRepository.checkUserData(null);

          expect(result.hasError, isTrue);
          expect(result.error, const CommonResponseError.unAuthorized());
        },
      );

      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          final fakeError = CommonResponseError<DefaultApiError>.undefinedError(
            Exception('testException'),
          );
          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async => ApiResponse.error(
              fakeError,
            ),
          );

          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {},
                count: 0,
              ),
            ),
          );
          final result = await authRepository.checkUserData(AuthTestData.token);

          expect(result.hasError, isTrue);
          expect(result.error, fakeError);
        },
      );

      test(
        'should return true and emit AuthData in tokenStream when ApiResponse is success',
        () async {
          final fakeError = Exception('testException');
          when(
            () => authService.getUserInfo(
              token: any(named: 'token'),
            ),
          ).thenAnswer(
            (_) async {
              throw fakeError;
            },
          );

          subscription.add(
            authRepository.userDataStream.listen(
              expectAsync1(
                (event) {
                  expect(
                    event,
                    isNull,
                  );
                },
              ),
            ),
          );
          final result = await authRepository
              .checkUserData(AuthTestData.authData.user.token);

          expect(result.hasError, isTrue);
          expect(result.error, CommonResponseError.undefinedError(fakeError));
        },
      );
    });
  });
}
