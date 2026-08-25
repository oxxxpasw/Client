import 'package:sosedifedi/data/models/data_model.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils/sr_bloc_test.dart';
import '../test_data/auth_test_data.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/test_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAnalystService extends Mock implements AnalystServiceTestImpl {}

main() {
  late AuthRepository authRepository;
  late AnalystService analystService;
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {
    authRepository = MockAuthRepository();
    analystService = MockAnalystService();
  });
  setUpAll(() {
    registerFallbackValue(Gender.men);
  });
  group('AuthBloc', () {
    test(
      'initial state is correct',
      () async {
        when(() => authRepository.tempTokenStream)
            .thenAnswer((_) => const Stream.empty());

        final authBloc = AuthBloc(
            authRepository: authRepository, analystService: analystService);
        expect(
          authBloc.state,
          const AuthState(
            formattedPhone: '',
          ),
        );
      },
    );

    group('InitAuthEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'User not auth',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.checkToken()).thenAnswer((_) async => null);
          when(() => authRepository.token).thenReturn(SynchronousFuture(null));
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const InitAuthEvent()),
        expect: () => [
          isA<AuthState>().having((e) => e.retryTime, 'retryTime', isNotNull)
        ],
        expectSr: () => [
          const AuthSr.loading(),
          const AuthSr.ready(),
        ],
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'User is auth with valid UserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.checkToken())
              .thenAnswer((_) async => AuthTestData.token);
          when(() => authRepository.token)
              .thenReturn(SynchronousFuture(AuthTestData.token));
          when(() => authRepository.getUserData()).thenAnswer(
            (_) async => ApiResponse.success(AuthTestData.authData.userData),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const InitAuthEvent()),
        expect: () => [
          isA<AuthState>().having((e) => e.retryTime, 'retryTime', isNotNull)
        ],
        expectSr: () => [
          const AuthSr.loading(),
          const AuthSr.authenticated(),
        ],
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'User is auth with no UserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.checkToken())
              .thenAnswer((_) async => AuthTestData.token);
          when(() => authRepository.token)
              .thenReturn(SynchronousFuture(AuthTestData.token));
          when(() => authRepository.getUserData()).thenAnswer(
            (_) async => const ApiResponse.success(null),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const InitAuthEvent()),
        expect: () => [
          isA<AuthState>().having((e) => e.retryTime, 'retryTime', isNotNull)
        ],
        expectSr: () => [
          const AuthSr.loading(),
          const AuthSr.needUserData(),
        ],
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'User is auth with invalid UserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.checkToken())
              .thenAnswer((_) async => AuthTestData.token);
          when(() => authRepository.token)
              .thenReturn(SynchronousFuture(AuthTestData.token));
          when(() => authRepository.getUserData()).thenAnswer(
            (_) async => ApiResponse.error(
              TestData.errorResponse,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const InitAuthEvent()),
        expect: () => [
          isA<AuthState>().having((e) => e.retryTime, 'retryTime', isNotNull)
        ],
        expectSr: () => [
          const AuthSr.loading(),
          const AuthSr.needUserData(),
        ],
      );
    });

    group('PhoneInputEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'phone is formatted',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        wait: const Duration(seconds: 1),
        expect: () => [
          isA<AuthState>()
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.phoneValid, 'phoneValid', isFalse)
        ],
      );
    });

    group('_PhoneSubmitEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'code send',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        expect: () => [
          isA<AuthState>()
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.authenticated, 'authenticated', isFalse),
          isA<AuthState>()
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.authenticated, 'authenticated', isFalse),
        ],
        expectSr: () => [],
        wait: const Duration(seconds: 1),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'code not send with CommonResponseError',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => ApiResponse.error(
              TestData.errorResponse,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        expect: () => [
          isA<AuthState>()
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.authenticated, 'authenticated', isFalse),
        ],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
        wait: const Duration(seconds: 1),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'code not send with Exception',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any()))
              .thenThrow(TestData.testException);
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        expect: () => [
          isA<AuthState>()
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.authenticated, 'authenticated', isFalse),
        ],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
        wait: const Duration(seconds: 1),
      );
    });

    group('CodeSubmitEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'auth existing user',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.getUserData()).thenAnswer(
            (invocation) async =>
                ApiResponse.success(AuthTestData.authData.userData),
          );
          when(() => authRepository.saveTempToken()).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isTrue)
              .having(
                  (e) => e.userData, 'userData', AuthTestData.authData.userData)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
        ],
        expectSr: () => [const AuthSr.authenticated()],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'submitCode has error',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => ApiResponse.error(TestData.errorResponse),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
        ],
        expectSr: () => [isA<AuthentionErrorSr>()],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'userData is null',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );

          when(() => authRepository.getUserData()).thenAnswer(
            (invocation) async => const ApiResponse.success(null),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isTrue)
              .having((e) => e.userData, 'userData', null)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
        ],
        expectSr: () => [const AuthSr.needUserData()],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'getUserData has error',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );

          when(() => authRepository.getUserData()).thenAnswer(
            (invocation) async => ApiResponse.error(
              TestData.errorResponse,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isTrue)
              .having((e) => e.userData, 'userData', null)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
        ],
        expectSr: () => [const AuthSr.needUserData()],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'unhandled exception on submitCode',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any()))
              .thenThrow(TestData.testException);
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.userData, 'userData', null)
              .having((e) => e.codeValid, 'codeValid', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
        ],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'unhandled exception on getUserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );

          when(() => authRepository.getUserData())
              .thenThrow(TestData.testException);
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isTrue)
              .having((e) => e.userData, 'userData', null)
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
        ],
        expectSr: () => [const AuthSr.needUserData()],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'saveTempToken has error',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.submitCode(any(), any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
          when(() => authRepository.getUserData()).thenAnswer(
            (invocation) async =>
                ApiResponse.success(AuthTestData.authData.userData),
          );
          when(() => authRepository.saveTempToken()).thenAnswer(
            (invocation) async => ApiResponse.error(
              TestData.errorResponse,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.codeValid, 'codeValid', isTrue)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
        ],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'phone is not valid',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: null,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const CodeSubmitEvent(AuthTestData.testCode));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeValid, 'codeValid', isFalse)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
        ],
        expectSr: () => [],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'code length is not 4',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) {
          bloc.add(const CodeSubmitEvent('123'));
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeValid, 'codeValid', isFalse)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeValid, 'codeValid', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
        ],
        expectSr: () => [],
        wait: const Duration(seconds: 2),
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'event CodeSubmitEvent before PhoneInputEvent',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: null,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const CodeSubmitEvent(AuthTestData.testCode)),
        expect: () => [],
        expectSr: () => [],
        wait: const Duration(seconds: 1),
      );
    });

    group('UpdateUserDataEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'success updateUserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(
            () => authRepository.updateUserData(
              firstName: any(named: 'firstName'),
              gender: any(named: 'gender'),
              birthDate: any(named: 'birthDate'),
            ),
          ).thenAnswer(
            (invocation) async =>
                ApiResponse.success(AuthTestData.authData.userData),
          );

          when(() => authRepository.saveTempToken()).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(
            UpdateUserDataEvent(
              gender: AuthTestData.authData.userData!.gender,
              birthDate: AuthTestData.authData.userData!.birthDay,
              firstName: AuthTestData.authData.userData!.firstName,
            ),
          ),
        expect: () => [
          isA<AuthState>(),
        ],
        expectSr: () => [
          const AuthSr.authenticated(),
        ],
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'updateUserData return null',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(
            () => authRepository.updateUserData(
              firstName: any(named: 'firstName'),
              gender: any(named: 'gender'),
              birthDate: any(named: 'birthDate'),
            ),
          ).thenAnswer(
            (invocation) async => const ApiResponse.success(null),
          );

          when(() => authRepository.saveTempToken()).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(
            UpdateUserDataEvent(
              gender: AuthTestData.authData.userData!.gender,
              birthDate: AuthTestData.authData.userData!.birthDay,
              firstName: AuthTestData.authData.userData!.firstName,
            ),
          ),
        expect: () => [
          isA<AuthState>(),
        ],
        expectSr: () => [
          const AuthSr.authenticated(),
        ],
      );

      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'updateUserData has error',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(
            () => authRepository.updateUserData(
              firstName: any(named: 'firstName'),
              gender: any(named: 'gender'),
              birthDate: any(named: 'birthDate'),
            ),
          ).thenAnswer(
            (invocation) async => ApiResponse.error(
              TestData.errorResponse,
            ),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(
            UpdateUserDataEvent(
              gender: AuthTestData.authData.userData!.gender,
              birthDate: AuthTestData.authData.userData!.birthDay,
              firstName: AuthTestData.authData.userData!.firstName,
            ),
          ),
        expect: () => [],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
      );
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'unhandled exception on updateUserData',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(
            () => authRepository.updateUserData(
              firstName: any(named: 'firstName'),
              gender: any(named: 'gender'),
              birthDate: any(named: 'birthDate'),
            ),
          ).thenThrow(TestData.testException);
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(
            UpdateUserDataEvent(
              gender: AuthTestData.authData.userData!.gender,
              birthDate: AuthTestData.authData.userData!.birthDay,
              firstName: AuthTestData.authData.userData!.firstName,
            ),
          ),
        expect: () => [],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
      );
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'saveTempToken has error',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(
            () => authRepository.updateUserData(
              firstName: any(named: 'firstName'),
              gender: any(named: 'gender'),
              birthDate: any(named: 'birthDate'),
            ),
          ).thenAnswer(
            (invocation) async =>
                ApiResponse.success(AuthTestData.authData.userData),
          );
          when(() => authRepository.saveTempToken()).thenAnswer(
            (invocation) async => ApiResponse.error(TestData.errorResponse),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(
            UpdateUserDataEvent(
              gender: AuthTestData.authData.userData!.gender,
              birthDate: AuthTestData.authData.userData!.birthDay,
              firstName: AuthTestData.authData.userData!.firstName,
            ),
          ),
        expect: () => [],
        expectSr: () => [
          isA<AuthentionErrorSr>(),
        ],
      );
    });
    group('ResendCodeEvent', () {
      srBlocTest<AuthBloc, AuthState, AuthSr>(
        'resend code',
        setUp: () {
          when(() => authRepository.tempTokenStream)
              .thenAnswer((_) => const Stream.empty());
          when(() => authRepository.formatPhone(any())).thenAnswer(
            (invocation) async => Phone(
              formattedPhone: invocation.positionalArguments.single,
              e164: invocation.positionalArguments.single,
            ),
          );

          when(() => authRepository.submitPhone(any())).thenAnswer(
            (invocation) async => const ApiResponse.success(true),
          );
        },
        build: () => AuthBloc(
          authRepository: authRepository,
          analystService: analystService,
        )..add(const PhoneInputEvent(AuthTestData.testPhone)),
        act: (bloc) async {
          await Future.delayed(const Duration(seconds: 1));
          bloc.add(const ResendCodeEvent());
        },
        expect: () => [
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone)
              .having((e) => e.codeSent, 'codeSent', isFalse)
              .having((e) => e.phoneValid, 'phoneValid', isTrue),
          isA<AuthState>()
              .having((e) => e.authenticated, 'authenticated', isFalse)
              .having((e) => e.codeSent, 'codeSent', isTrue)
              .having((e) => e.phoneValid, 'phoneValid', isTrue)
              .having((e) => e.formattedPhone, 'formattedPhone',
                  AuthTestData.testPhone),
        ],
        expectSr: () => [],
        wait: const Duration(seconds: 2),
      );
    });
  });
}
