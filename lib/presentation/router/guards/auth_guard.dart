import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

typedef IsAuthorized = bool Function();

const _skipAuthKey = 'skipAuthKey';

const _kNotSkipableAuthRoutes = [
  FridgeQrScanRoute2.name,
  FridgeQrScanRoute.name,
  ConfirmOrderRoute.name,
  UserDataRoute.name,
  CreateOrderRoute.name,
  QrScanRoute.name,
];

class AuthGuard extends AutoRouteGuard {
  @protected
  final IsAuthorized isAuthorized;
  @protected
  final SharedPreferences prefs;

  AuthGuard({
    required this.isAuthorized,
    required this.prefs,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      if (!resolver.isResolved) {
        resolver.next();
      }
    } else {
      final canSkipAuth = _canSkipAuthForRoute(resolver.route);

      if (!canSkipAuth) {
        final result = await router.push<bool>(OpenWithoutRegPopup());
        if (result is! bool) {
          if (router.canNavigateBack) {
            router.pop();
          }
          return;
        }
      }

      resolver.redirectUntil(
        AuthRoute(
          canSkipAuth: canSkipAuth,
          onComplete: () async {
            if (await canNavigate(resolver.route) ||
                (prefs.getBool(_skipAuthKey) ?? false)) {
              if (!resolver.isResolved) {
                resolver.next();
              }
              return;
            }
            if (router.canNavigateBack) {
              router.pop();
              return;
            }
          },
        ),
      );
    }
  }

  Future<bool> canNavigate(RouteMatch route) async =>
      isAuthorized() || _canNavigateToRoute(route);

  Future<bool> skipAuth() => prefs.setBool(_skipAuthKey, true);

  bool _isAuthSkipped() => prefs.getBool(_skipAuthKey) ?? false;

  bool _canSkipAuthForRoute(RouteMatch route) =>
      !_kNotSkipableAuthRoutes.contains(route.name);

  bool _canNavigateToRoute(RouteMatch route) =>
      _isAuthSkipped() && _canSkipAuthForRoute(route);
}
