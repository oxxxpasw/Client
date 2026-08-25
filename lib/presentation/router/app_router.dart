import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';
export 'app_router.gr.dart';

import 'guards/city_guard.dart';
import 'guards/has_unfinished_purchase_guard.dart';
import 'guards/has_unpaid_order_guard.dart';
import 'guards/auth_guard.dart';
import 'guards/init_guard.dart';
import 'route_builders/modal_dialog.dart';
import 'route_builders/modal_sheet.dart';

/// Р РѕСѓС‚РµСЂ РїСЂРёР»РѕР¶РµРЅРёСЏ
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter({
    super.navigatorKey,
    required this.initGuard,
    required this.authGuard,
    required this.cityGuard,
    required this.hasUnpaidOrderGuard,
    required this.hasUnfinishedPurchaseGuard,
  });

  final InitGuard initGuard;
  final AuthGuard authGuard;
  final CityGuard cityGuard;
  final HasUnpaidOrderGuard hasUnpaidOrderGuard;
  final HasUnfinishedPurchaseGuard hasUnfinishedPurchaseGuard;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: SplashRoute.page,
          children: [
            CustomRoute(
              page: SplashLoadingRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              page: SplashErrorRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              page: SplashUpdateRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            )
          ],
        ),
        AdaptiveRoute(
          path: '/auth',
          page: AuthRoute.page,
          children: [
            AdaptiveRoute(
              path: 'start',
              page: StartRoute.page,
            ),
            AdaptiveRoute(
              path: 'phone-input',
              page: PhoneInputRoute.page,
              initial: true,
            ),
            AdaptiveRoute(
              path: 'code-input',
              page: CodeInputRoute.page,
            ),
            AdaptiveRoute(
              path: 'loading',
              page: AuthLoadingRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          path: '/choose_city',
          page: CityListRoute.page,
        ),
        AdaptiveRoute(
          path: '/',
          page: MainRoute.page,
          initial: true,
          guards: [cityGuard],
          children: [
            AdaptiveRoute(
              path: 'home',
              page: FridgeMapRoute.page,
              initial: true,
            ),
            AdaptiveRoute(
              path: 'bonus-program',
              page: BonusProgramInfoRoute.page,
            ),
            AdaptiveRoute(
              path: 'scan-to-start',
              page: ScanToStartRoute.page,
            ),
            AdaptiveRoute(
              path: 'user-profile',
              page: UserProfileRoute.page,
              children: [
                AdaptiveRoute(
                  path: '',
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AdaptiveRoute(
                  path: 'legal-info',
                  page: LegalInfoRoute.page,
                ),
              ],
            ),
            AdaptiveRoute(
              path: 'fridge-map',
              page: FridgeMapRoute.page,
            ),
            AdaptiveRoute(
              path: 'products',
              page: ProductsRoute.page,
            ),
            AdaptiveRoute(
              path: 'promotions',
              page: PromotionsRoute.page,
            ),
            AdaptiveRoute(
              path: 'about-us',
              page: AboutUsRoute.page,
            ),
            AdaptiveRoute(
              path: 'feedback',
              page: FeedbackMainRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          path: 'store/:assortmentFile/products/:productId',
          page: ProductRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/cart/edit-product',
          page: EditProductRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(path: '/confirm-order', page: ConfirmOrderRoute.page, guards: [
          initGuard,
          authGuard,
        ], children: [
          CustomRoute(
            path: 'loading',
            page: OrderLoadingRoute.page,
            initial: true,
            transitionsBuilder: transitionsBuilder,
          ),
          CustomRoute(
            path: 'form',
            page: OrderFormRoute.page,
            transitionsBuilder: transitionsBuilder,
          ),
        ]),
        AdaptiveRoute(
          path: '/search',
          page: SearchRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/map',
          page: MapRoute.page,
          guards: [initGuard, authGuard, cityGuard],
          children: [
            AdaptiveRoute(
              path: 'stores',
              page: StoreMapRoute.page,
              initial: true,
            ),
          ],
        ),
        CustomRoute(
          path: '/new-order-info',
          page: NewOrderInfoRoute.page,
          customRouteBuilder: modalDialogBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/point-list',
          page: PointListRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/raffles',
          page: RafflesRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          page: PointListModalRoute.page,
          guards: [initGuard, cityGuard],
          customRouteBuilder: materialModalSheetBuilder,
        ),
        AdaptiveRoute(
          path: '/fridge-qr',
          page: FridgeQrScanRoute.page,
          guards: [
            initGuard,
            authGuard,
            cityGuard,
            hasUnpaidOrderGuard,
            hasUnfinishedPurchaseGuard,
          ],
          children: [
            CustomRoute(
              page: ScanFridgeRoute.page,
              initial: true,
              transitionsBuilder: fadeUpwardsPageTransitionBuilder,
              maintainState: false,
            ),
            CustomRoute(
              page: ScanCartRoute.page,
              transitionsBuilder: fadeUpwardsPageTransitionBuilder,
              maintainState: false,
            ),
          ],
        ),

        CustomRoute(
          path: '/fridge-qr-2',
          page: FridgeQrScanRoute2.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
          guards: [initGuard, authGuard, cityGuard],
          children: [
            CustomRoute(
              page: FridgeCartRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              page: ScanProductRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'payment-processing',
              page: PaymentCompletionRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'success',
              page: SuccessOrderRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-payment-type',
              page: ChoosePaymentTypeRoute2.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
          ],
        ),

        AdaptiveRoute(
          maintainState: false,
          path: '/qr',
          page: QrScanRoute.page,
          guards: [
            initGuard,
            authGuard,
            cityGuard,
            hasUnpaidOrderGuard,
            hasUnfinishedPurchaseGuard,
          ],
        ),
        AdaptiveRoute(
          path: '/promotion/:promotionId',
          page: PromotionRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/user-data',
          page: UserDataRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/account-qr',
          page: AccountQRRoute.page,
          guards: [initGuard, authGuard, cityGuard],
          customRouteBuilder: adaptiveModalSheetBuilder,
        ),
        AdaptiveRoute(
          path: '/stories/:storyId',
          page: StoryRoute.page,
          guards: [initGuard, authGuard, cityGuard],
          fullscreenDialog: true,
        ),
        AdaptiveRoute(
          path: '/order-history',
          page: OrderHistoryRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/order-history/:orderId',
          page: OrderDetailsRoute.page,
          customRouteBuilder: roundedMaterialModalSheetBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/unpaid-order',
          page: UnpaidOrderDetailsRoute.page,
          customRouteBuilder: roundedMaterialModalSheetBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/about-us/:id',
          page: AboutUsItemRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        AdaptiveRoute(
          path: '/products/:assortmentFile/:productId',
          page: ProductWithMapRoute.page,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/products/map',
          page: ProductMapRoute.page,
          customRouteBuilder: barModalSheetRouteBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/fridges/:fridgeFileName',
          page: FridgeProductsRoute.page,
          customRouteBuilder: barModalSheetRouteBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),
        CustomRoute(
          path: '/select-point',
          page: StoreInfoRoute.page,
          customRouteBuilder: modalBottomDialogBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),

        AdaptiveRoute(
          path: '/report-problem',
          page: ReportProblemRoute.page,
          guards: [initGuard],
        ),
        AdaptiveRoute(
          page: BonusProgramRoute.page,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/qr/search',
          page: CartSearchRoute.page,
          customRouteBuilder: roundedMaterialModalSheetBuilder,
          guards: [initGuard, authGuard, cityGuard],
        ),

        // Popups
        CustomRoute(
          path: '/report-problem-popup',
          page: ReportProblemPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/qr-report-problem-popup',
          page: QrReportProblemPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: OpenWithoutRegPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: BankAppNotInstalledPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: FridgeNotSelectedPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: BarcodeNotFoundPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: UserBannedPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: HasUnfinishedPurchasePopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: HasUnpaidOrderPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/feedback',
          page: SendFeedBackPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: ChangeCityPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),

        // Payment
        AdaptiveRoute(
          page: ChoosePaymentTypeRoute3.page,
          guards: [initGuard],
        ),
        AdaptiveRoute(
          path: '/web-view-payment',
          page: WebViewPaymentRoute.page,
          fullscreenDialog: true,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/choose-sbp-payment',
          page: ChooseSpbPaymentRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/payment-completion-waiting',
          page: PaymentCompletionWaitingRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard],
        ),

        AdaptiveRoute(
          path: '/create-order',
          page: CreateOrderRoute.page,
          guards: [initGuard, authGuard, cityGuard],
          children: [
            CustomRoute(
              path: 'check-address',
              page: CheckAddressRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-drink',
              page: ChooseDrinkRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'payment-processing',
              page: PaymentCompletionRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'coffee-processing',
              page: CoffeeProcessingRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'success',
              page: SuccessOrderRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-payment-type',
              page: ChoosePaymentTypeRoute2.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
          ],
        ),

        AdaptiveRoute(
          path: 'feedback',
          page: FeedbackRoute.page,
          children: [
            AdaptiveRoute(
              page: FeedbackStoreListRoute.page,
            ),
            AdaptiveRoute(
              page: AppFeedbackRoute.page,
            ),
            AdaptiveRoute(
              page: FeedbackPurchaseListRoute.page,
            ),
            AdaptiveRoute(
              page: FeedbackQrScanRoute.page,
            ),
          ],
        ),

        AdaptiveRoute(
          path: '/drink/:id',
          page: DrinkDetailsRoute.page,
        ),

        AdaptiveRoute(
          path: '/about-us',
          page: AboutUsRoute.page,
        ),

        CustomRoute(
          page: BonusAccountInfoRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard],
        ),

        AdaptiveRoute(
          path: '/reviews/details',
          page: ReviewDetailsRoute.page,
          guards: [initGuard, authGuard],
        ),

        // Redirects
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}

Widget transitionsBuilder(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: ReverseAnimation(secondaryAnimation).drive(tween),
    transformHitTests: false,
    child: FadeTransition(
      opacity: ReverseAnimation(secondaryAnimation),
      child: SlideTransition(
        position: animation.drive(tween),
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
  );
}

Widget fadeUpwardsPageTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    const FadeUpwardsPageTransitionsBuilder()
        .buildTransitions(null, context, animation, secondaryAnimation, child);
