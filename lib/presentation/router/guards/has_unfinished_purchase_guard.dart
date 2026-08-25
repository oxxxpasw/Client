import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

typedef HasUnfinishedPurchase = bool Function();

class HasUnfinishedPurchaseGuard extends AutoRouteGuard {
  @protected
  final HasUnfinishedPurchase hasUnfinishedPurchase;

  HasUnfinishedPurchaseGuard({
    required this.hasUnfinishedPurchase,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      if (!resolver.isResolved) {
        resolver.next();
      }
    } else {
      resolver.redirectUntil(
        HasUnfinishedPurchasePopup(
          onActionPressed: () {
            if (!resolver.isResolved) {
              resolver.next(false);
            }
            router.push(
              FridgeQrScanRoute2(shouldSkipUnfinishedPurchaseGuard: true),
            );
          },
        ),
      );
    }
  }

  Future<bool> canNavigate(RouteMatch route) async {
    final args = route.args;
    if (args is FridgeQrScanRouteArgs &&
        args.shouldSkipUnfinishedPurchaseGuard) {
      return true;
    }
    if (args is FridgeQrScanRoute2Args &&
        args.shouldSkipUnfinishedPurchaseGuard) {
      return true;
    }
    return !hasUnfinishedPurchase();
  }
}
