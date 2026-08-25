import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/startup_repository.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/presentation/router/guards/auth_guard.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:app_links_platform_interface/app_links_platform_interface.dart';
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart';

import '../test_data/notification_test_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAuthGuard extends Mock implements AuthGuard {}

class MockCartRepository extends Mock implements CartRepository {}

class MockPushNotificationService extends Mock
    implements PushNotificationService {}

class MockAppLinksPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements AppLinksPlatform {}

class MockFirebaseMessagingPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements FirebaseMessagingPlatform {}

void main() {
  late StartupRepositoryImpl startupRepository;
  late AuthRepository authRepository;
  late AuthGuard authGuard;
  late CartRepository cartRepository;
  late AppLinksPlatform appLinks;
  late FirebaseMessagingPlatform messagingPlatform;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    appLinks = MockAppLinksPlatform();
    messagingPlatform = MockFirebaseMessagingPlatform();

    AppLinksPlatform.instance = appLinks;

    setupFirebaseCoreMocks();

    await Firebase.initializeApp();
    registerFallbackValue(Firebase.app());

    // ignore: invalid_use_of_protected_member
    when(() => messagingPlatform.delegateFor(app: any(named: 'app')))
        .thenReturn(messagingPlatform);
    // ignore: invalid_use_of_protected_member
    when(() => messagingPlatform.setInitialValues(
          isAutoInitEnabled: any(named: 'isAutoInitEnabled'),
        )).thenReturn(messagingPlatform);

    FirebaseMessagingPlatform.instance = messagingPlatform;
  });

  setUp(() {
    authRepository = MockAuthRepository();
    authGuard = MockAuthGuard();
    cartRepository = MockCartRepository();
    startupRepository = StartupRepositoryImpl(
      authRepository: authRepository,
      authGuard: authGuard,
      cartRepository: cartRepository,
    );
  });

  tearDown(() {
    startupRepository.dispose();
  });

  group('isInited', () {
    test('returns the value of _isInited variable', () {
      final result = startupRepository.isInited();
      expect(result, isFalse);
    });
  });

  group('getInitialDeepLink', () {
    test(
        'returns the correct value when _appLinks.getInitialAppLink return value',
        () async {
      when(() => appLinks.getInitialAppLink())
          .thenAnswer((_) async => Uri.parse('/app-link?key=value'));
      when(() => messagingPlatform.getInitialMessage())
          .thenAnswer((_) async => null);

      final result = await startupRepository.getInitialDeepLink();
      verify(() => appLinks.getInitialAppLink()).called(1);
      verifyNever(() => messagingPlatform.getInitialMessage());
      expect(result, equals('/app-link?key=value'));
    });

    test(
        'returns the correct value when PushNotificationService.getInitialDeepLinkFromNotification return value',
        () async {
      when(() => appLinks.getInitialAppLink()).thenAnswer((_) async => null);
      when(() => messagingPlatform.getInitialMessage()).thenAnswer(
        (_) async => RemoteMessage(
          data: NotificationTestData.openScreenNotificationDataJson,
          sentTime: DateTime.now(),
        ),
      );

      final result = await startupRepository.getInitialDeepLink();
      verify(() => appLinks.getInitialAppLink()).called(1);
      verify(() => messagingPlatform.getInitialMessage()).called(1);
      expect(result, equals('/app-link?key=value'));
    });

    test(
        'returns null when _appLinks.getInitialAppLink and PushNotificationService.getInitialDeepLinkFromNotification return null',
        () async {
      when(() => appLinks.getInitialAppLink()).thenAnswer((_) async => null);
      when(() => messagingPlatform.getInitialMessage())
          .thenAnswer((_) async => null);

      final result = await startupRepository.getInitialDeepLink();
      verify(() => appLinks.getInitialAppLink()).called(1);
      verify(() => messagingPlatform.getInitialMessage()).called(1);
      expect(result, isNull);
    });

    test('returns null when an error occurs', () async {
      when(() => appLinks.getInitialAppLink()).thenThrow(Exception());

      final result = await startupRepository.getInitialDeepLink();

      expect(result, isNull);
    });
  });
}
