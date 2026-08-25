import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/bloc/create_order_bloc/create_order_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/payment/payment.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class FridgeQrScanScreen2 extends StatefulWidget implements AutoRouteWrapper {
  const FridgeQrScanScreen2({
    super.key,
    this.store,
    this.fridgeId,
    this.barcode,
    this.shouldSkipUnfinishedPurchaseGuard = false,
  });

  final Store? store;
  final String? fridgeId;
  final BarcodeCapture? barcode;
  final bool shouldSkipUnfinishedPurchaseGuard;

  @override
  State<FridgeQrScanScreen2> createState() => _FridgeQrScanScreen2State();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => GetIt.I.get()
            ..add(
              CartEvent.initCart(
                store: store,
                shouldRestoreCart: store == null,
                barcode: barcode,
                fridgeId: fridgeId,
              ),
            ),
        ),
        BlocProvider<CreateOrderBloc>(
          create: (context) => GetIt.I.get(
            param1: false,
          )..add(const CreateOrderEvent.init()),
        ),
      ],
      child: this,
    );
  }
}

class _FridgeQrScanScreen2State extends State<FridgeQrScanScreen2> {
  final _routerKey = GlobalKey<AutoRouterState>();

  StackRouter? get router => _routerKey.currentState?.controller;

  StackRouter? get _controller => _routerKey.currentState?.controller;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        if (router?.current.name == SuccessOrderRoute.name) {
          return context.router.root.pop();
        }

        final bloc = context.read<CartBloc>();
        final result = await showAdaptiveConfirmDialog(
          context: context,
          defaultAction: ConfirmDialogAction.cancel,
          title: Text(context.tr(LocaleKeys.cart_cancelOrderQuestion)),
        );
        if (result == ConfirmDialogResult.confirm && context.mounted) {
          bloc.add(const CartEvent.onCancelOrderPressed());
          return context.router.root.pop();
        }
      },
      child: StreamListener<CreateOrderSr>(
        stream: context.read<CreateOrderBloc>().singleResults,
        onData: (sr) => switch (sr) {
          CreateOrderOpenDrinkListPage() => null,
          CreateOrderOpenPaymentTypeList() => _controller?.replace(
              const ChoosePaymentTypeRoute2(),
            ),
          CreateOrderProcessPaymentSr() => null,
          CreateOrderWaitPaymentSr(:final payment, :final storeId) =>
            _controller?.replace(
              PaymentCompletionRoute(
                payment: payment,
                storeId: storeId,
                currencySymbol: context.read<CartBloc>().state.currencySymbol,
                onPayment: () {
                  context
                      .read<CreateOrderBloc>()
                      .add(const CreateOrderEvent.nextPagePressed());
                },
                onFailedPayment: () {},
                onChangePayment: () {
                  context
                      .read<CartBloc>()
                      .add(const CartEvent.onChangePaymentTypePressed());
                },
              ),
            ),
          CreateOrderOpenSuccessSr() => () {
              _controller?.replace(
                SuccessOrderRoute(
                  isCoffee: false,
                ),
              );
            }(),
          CreateOrderOpenCoffeeProcessingSr() => _controller?.replace(
              CoffeeProcessingRoute(
                onSuccess: () {
                  context
                      .read<CreateOrderBloc>()
                      .add(const CreateOrderEvent.nextPagePressed());
                },
              ),
            ),
          CreateOrderOpenScannerPage() => _controller?.replace(
              ScanProductRoute(
                onPressedNext: () {
                  context
                      .read<CreateOrderBloc>()
                      .add(const CreateOrderEvent.nextPagePressed());
                },
              ),
            ),
          CreateOrderOpenCartPage() => _controller?.replace(
              FridgeCartRoute(),
            )
        },
        child: FilledButtonTheme(
          data: FilledButtonThemeData(
            style: FilledButtonTheme.of(context).style?.copyWith(
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: AppInsets.padding16,
                      vertical: AppInsets.padding8,
                    ),
                  ),
                  shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppBorderRadius.large),
                    ),
                  ),
                ),
          ),
          child: Builder(builder: (context) {
            return StreamListener<CartSr>(
              stream: context.read<CartBloc>().singleResults,
              onData: (sr) => sr.mapOrNull(
                showStoreList: (_) async {
                  final result = await context.router.push(
                    PointListModalRoute(
                      title: Text(
                        LocaleKeys.cart_orderFrom.tr(context: context),
                      ),
                    ),
                  );
                  if (result is Store && context.mounted) {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.initCart(store: result));
                  }
                  return null;
                },
                barcodeNotFound: (_) =>
                    context.router.push(const BarcodeNotFoundPopup()),
                newProductAdded: (sr) => HapticFeedback.mediumImpact(),
                error: (sr) {
                  return context.router.navigate(
                    QrReportProblemPopup(error: sr.error),
                  );
                },
                // submit: (sr) {
                //   final router = context.router.root;
                //   return WidgetsBinding.instance.addPostFrameCallback(
                //     (_) async {
                //       router.navigate(const MainRoute());
                //       router.push(const NewOrderInfoRoute());
                //     },
                //   );
                // },
                // cancelPayment: (sr) {
                //   final router = context.router.root;
                //   return WidgetsBinding.instance.addPostFrameCallback(
                //     (_) => router.navigate(const MainRoute()),
                //   );
                // },
                processPayment: (sr) => _processPayment(context, sr),
                storeNotSelected: (sr) => context.router.navigate(
                  const FridgeNotSelectedPopup(),
                ),
                showPaymentTypeList: (sr) async {
                  context
                      .read<CreateOrderBloc>()
                      .add(const CreateOrderEvent.nextPagePressed());
                  return null;
                },
                showExpiredBarcodeAdding: (sr) async {
                  final result = await showPopup(
                    context: context,
                    title: Text(
                      context.tr(LocaleKeys.cart_addExpiredProductPopup_title),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    confirmLabel: Text(
                      context.tr(LocaleKeys.cart_addExpiredProductPopup_action),
                    ),
                  );
                  if (result == true && context.mounted) {
                    context.read<CartBloc>().add(
                          CartEvent.addExpiredBarcode(sr.barcode),
                        );
                  }
                  return null;
                },
              ),
              child: AutoRouter(
                key: _routerKey,
                placeholder: (_) => const Placeholder(),
                builder: (context, child) {
                  return Scaffold(
                    appBar: CustomAppBar(
                      scrolledUnderElevation: 0,
                    ),
                    body: SafeArea(
                      bottom: false,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: AppInsets.padding24,
                              left: AppInsets.padding16,
                              right: AppInsets.padding16,
                            ),
                            child: OrderProgressIndicator(),
                          ),
                          Expanded(child: child),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }

  Future<void> _processPayment(
    BuildContext context,
    ProcessPaymentSr sr,
  ) async {
    final handler = PaymentHandler(
      payment: sr.payment,
      storeId: sr.storeId,
    );
    final result = await handler.processPayment(context);

    if (!context.mounted) return;

    if (result) {
      return context.read<CreateOrderBloc>().add(
            CreateOrderEvent.successPayment(sr.payment, sr.storeId),
          );
    }
    return context.read<CartBloc>().add(
          const CartEvent.onChangePaymentTypePressed(),
        );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class OrderProgressIndicator extends StatelessWidget {
  const OrderProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateOrderBloc, CreateOrderState>(
      buildWhen: (current, previous) =>
          current.pageIndex != previous.pageIndex ||
          current.pageCount != previous.pageCount,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                children: [
                  TextSpan(
                    text: _getPageProgress(
                      context,
                      state.pageIndex + 1,
                      state.pageCount + 1,
                    ),
                  ),
                  TextSpan(
                    text: _getPageName(context, state.pageIndex),
                  )
                ],
              ),
            ),
            StepProgressIndicator(
              currentStep: state.pageIndex + 1,
              stepCount: state.pageCount + 1,
              height: AppInsets.padding24,
            ),
          ],
        );
      },
    );
  }

  String _getPageProgress(BuildContext context, int current, int count) =>
      context.tr(
        LocaleKeys.createOrderScreen_pageProgress,
        namedArgs: {
          'current': (current + 1).toString(),
          'count': count.toString(),
        },
      );

  String _getPageName(BuildContext context, int current) => switch (current) {
        0 => 'Добавьте  товары',
        1 => 'Проверьте покупку',
        2 => 'Оплата',
        3 => context.tr(LocaleKeys.createOrderScreen_pageNames_ready),
        _ => '',
      };
}

class StepProgressIndicator extends StatelessWidget {
  const StepProgressIndicator({
    super.key,
    required this.currentStep,
    required this.stepCount,
    this.activeColor,
    this.inactiveColor,
    this.doneColor,
    this.thickness = 3.0,
    this.gap = 3.0,
    this.height,
  });

  final int currentStep;
  final int stepCount;

  //styles
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? doneColor;

  final double thickness;
  final double gap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final effectiveActiveColor =
        activeColor ?? Theme.of(context).colorScheme.primary;
    final effectiveInactiveColor =
        inactiveColor ?? Theme.of(context).colorScheme.onSurfaceVariant;
    final effectiveDoneColor =
        doneColor ?? Theme.of(context).colorScheme.primary;

    Color getStepColor(int index) {
      if (index == currentStep) {
        return effectiveActiveColor;
      } else if (index < currentStep) {
        return effectiveDoneColor;
      } else {
        return effectiveInactiveColor;
      }
    }

    final children = List.generate(
      stepCount,
      (index) => Expanded(
        child: StepTile(
          height: thickness,
          width: double.infinity,
          color: getStepColor(index),
        ),
      ),
    );

    return SizedBox(
      height: height,
      child: Center(
        child: Row(
          spacing: gap,
          children: children,
        ),
      ),
    );
  }
}

class StepTile extends StatelessWidget {
  const StepTile({
    super.key,
    required this.height,
    required this.color,
    required this.width,
  });

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color: color,
        ),
      ),
    );
  }
}
