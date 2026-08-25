import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

///Observer для отправки изменений стрицы для сервиса аналтики
class AnalyticsRouteObserver extends AutoRouterObserver {
  void _sendScreen(Route? route, Route? previousRoute) {
    if (route?.settings.name != null) {
      GetIt.I
          .get<AnalystService>()
          .goToPage(route!.settings.name, previousRoute?.settings.name);
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _sendScreen(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _sendScreen(newRoute, oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    _sendScreen(route, previousRoute);
  }
}
