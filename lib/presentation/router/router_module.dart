import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/unpaid_orders_repository.dart';
import 'package:sosedifedi/domain/interactor/startup_interactor.dart';
import 'package:sosedifedi/keys.dart';
import 'package:sosedifedi/presentation/router/analyst_router_observer.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/router/guards/city_guard.dart';
import 'package:sosedifedi/presentation/router/guards/has_unfinished_purchase_guard.dart';

import 'current_route_to_stream_observer.dart';
import 'guards/auth_guard.dart';
import 'guards/has_unpaid_order_guard.dart';
import 'guards/init_guard.dart';

/// Модуль, формирующий сущности для роутинга
@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(
    AuthGuard authGuard,
    InitGuard initGuard,
    CityGuard cityGuard,
    HasUnpaidOrderGuard hasUnpaidOrderGuard,
    HasUnfinishedPurchaseGuard hasUnfinishedPurchaseGuard,
  ) {
    return AppRouter(
      navigatorKey: Keys.navigatorKey,
      initGuard: initGuard,
      authGuard: authGuard,
      cityGuard: cityGuard,
      hasUnpaidOrderGuard: hasUnpaidOrderGuard,
      hasUnfinishedPurchaseGuard: hasUnfinishedPurchaseGuard,
    );
  }

  @singleton
  AuthGuard authGuard(AuthRepository authRepository, SharedPreferences prefs) =>
      AuthGuard(isAuthorized: authRepository.isAuthorized, prefs: prefs);

  @singleton
  CityGuard cityGuard(CityRepository cityRepository, SharedPreferences prefs) =>
      CityGuard(hasCity: cityRepository.hasCity, prefs: prefs);

  @singleton
  InitGuard initGuard(StartupInteractor startupInteractor) =>
      InitGuard(isInited: startupInteractor.isInited);

  @singleton
  HasUnpaidOrderGuard hasUnpaidOrderGuard(
          UnpaidOrdersRepository unpaidOrdersRepository) =>
      HasUnpaidOrderGuard(
        hasUnpaidOrder: unpaidOrdersRepository.hasUnpaidOrder,
      );

  @singleton
  HasUnfinishedPurchaseGuard hasUnfinishedPurchaseGuard(
          CartRepository cartRepository) =>
      HasUnfinishedPurchaseGuard(
        hasUnfinishedPurchase: cartRepository.hasUnfinishedPurchase,
      );

  @injectable
  AnalyticsRouteObserver routerLoggingObserver() => AnalyticsRouteObserver();

  @injectable
  CurrentRouteToStreamObserver currentRouteToStreamObserver() =>
      CurrentRouteToStreamObserver();

  @injectable
  AutoRouteObserver routeObserver() => AutoRouteObserver();
}
