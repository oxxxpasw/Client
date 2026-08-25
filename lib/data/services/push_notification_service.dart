import 'package:sosedifedi/data/models/notification/notification.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/subject.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class PushNotificationService {
  static late FirebaseMessaging _fcm;
  static String? fcmToken;
  static final _notificationSubject = ValueSubject<Notification>();

  static Stream<Notification> get notificationStream =>
      _notificationSubject.stream;

  static Future<DefaultResponse<String?>> initialise() async {
    try {
      _fcm = FirebaseMessaging.instance;
      try {
        await _fcm.requestPermission(
          alert: true,
          announcement: false,
          badge: true,
          carPlay: false,
          criticalAlert: false,
          provisional: false,
          sound: true,
        ).timeout(const Duration(seconds: 2));
      } catch (_) {}

      try {
        fcmToken = await _fcm.getToken().timeout(
          const Duration(seconds: 2),
          onTimeout: () => null,
        );
      } catch (_) {}

      if (kDebugMode) {
        print('fcm: $fcmToken');
      }
      try {
        FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
        FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);
        FirebaseMessaging.onMessage.listen(_onMessage);
      } catch (_) {}

      return ApiResponse.success(fcmToken);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @pragma('vm:entry-point')
  static Future<void> _onBackgroundMessage(RemoteMessage message) async {
    final notification = Notification.fromJson(message.toMap());
    if (kDebugMode) {
      print(notification);
    }
  }

  static Future<void> _onMessageOpenedApp(RemoteMessage message) async {
    final notification = Notification.fromJson(message.toMap());
    _notificationSubject.add(notification);
    if (notification.data.screen != null) {
      GetIt.I.get<AppRouter>().pushPath(notification.data.screen!);
    }
  }

  static Future<void> _onMessage(RemoteMessage message) async {
    final notification = Notification.fromJson(message.toMap());
    if (kDebugMode) {
      print(notification);
    }
  }

  static Future<String?> getInitialDeepLinkFromNotification() async {
    try {
      final message = await FirebaseMessaging.instance
          .getInitialMessage()
          .timeout(const Duration(seconds: 2), onTimeout: () => null);
      if (message != null) {
        return Notification.fromJson(message.toMap()).data.screen;
      }
    } catch (_) {}
    return null;
  }
}
