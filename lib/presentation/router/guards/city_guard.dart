import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef IsAuthorized = bool Function();

const _skipCityChoose = 'skipCityChoose';

class CityGuard extends AutoRouteGuard {
  @protected
  final IsAuthorized hasCity;
  @protected
  final SharedPreferences prefs;

  CityGuard({
    required this.hasCity,
    required this.prefs,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate()) {
      if (!resolver.isResolved) {
        resolver.next();
      }
    } else {
      resolver.redirectUntil(CityListRoute(
        onSelectSelected: () async {
          if (await canNavigate()) {
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
      ));
    }
  }

  Future<bool> canNavigate() async =>
      hasCity() || (prefs.getBool(_skipCityChoose) ?? false);

  Future<bool> skipCityChoose() => prefs.setBool(_skipCityChoose, true);
}
