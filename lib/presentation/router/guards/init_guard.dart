import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

typedef IsInited = bool Function();

/// Гард проверяющий что инициализация прошла успешно (н-р: загрузка конфига)
///
/// Отображает Splash-Screen в случае если инициализация не была завершена,
/// после её завершения пользователь будет перенаправлен на исходный маршрут
class InitGuard extends AutoRouteGuard {
  @protected
  final IsInited isInited;
  bool _hasLoaded = false;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate()) {
      if (!resolver.isResolved) {
        resolver.next();
      }
    } else {
      resolver.redirectUntil(SplashRoute(onLoad: (deepLink) {
        _hasLoaded = true;
        if (deepLink == null) {
          if (!resolver.isResolved) {
            resolver.next();
          }
          if (router.canNavigateBack) {
            router.pop();
          }
          return;
        }
        if (!resolver.isResolved) {
          resolver.next(false);
        }
        router.pushPath(deepLink, includePrefixMatches: true);
      }));
    }
  }

  Future<bool> canNavigate() async => _hasLoaded || isInited();
}
