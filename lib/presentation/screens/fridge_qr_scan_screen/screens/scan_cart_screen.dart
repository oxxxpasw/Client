import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/bloc/fridge_qr_scanner_bloc/fridge_qr_scanner_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_switch/cusom_switch_list_tile.dart';
import 'package:sosedifedi/presentation/components/payment/payment.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/unfinished_purchase_onboarding/unfinished_purchase_onboarding_overlay.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/cart_list_view.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:sosedifedi/utils/utils.dart';

typedef OnStorePressed = void Function(Store store);

@RoutePage()
class ScanCartScreen extends StatelessWidget {
  const ScanCartScreen({
    super.key,
    this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final Store? store;
  final String? fridgeId;
  final bool restoreCart;

  @override
  Widget build(BuildContext context) {
    return CartScreenView(
      store: store,
      fridgeId: fridgeId,
      restoreCart: restoreCart,
    );
  }
}

class CartScreenView extends StatefulWidget {
  const CartScreenView({
    super.key,
    required this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final Store? store;
  final String? fridgeId;
  final bool restoreCart;

  @override
  State<CartScreenView> createState() => _CartScreenViewState();
}

class _CartScreenViewState extends State<CartScreenView> {
  StreamSubscription? _subscription;

  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();

    context.read<CartBloc>().add(
          CartEvent.initCart(
            store: widget.store,
            shouldRestoreCart: widget.restoreCart,
            fridgeId: widget.fridgeId,
          ),
        );

    final controller =
        Provider.of<MobileScannerController>(context, listen: false);

    _subscription ??= controller.barcodes.listen(
      (barcode) {
        if (!mounted) return;
        context.read<CartBloc>().add(
              CartEvent.onDetectQR(barcode: barcode),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final bloc = context.read<CartBloc>();
        final result = await showAdaptiveConfirmDialog(
          context: context,
          defaultAction: ConfirmDialogAction.cancel,
          title: Text(context.tr(LocaleKeys.cart_cancelOrderQuestion)),
        );
        if (result == ConfirmDialogResult.confirm && context.mounted) {
          bloc.add(const CartEvent.onCancelOrderPressed());
          context.router.root.pop();
        }
        return false;
      },
      child: Card(
        color: Theme.of(context).colorScheme.background,
        clipBehavior: Clip.antiAlias,
        child: SrBlocBuilder<CartBloc, CartState, CartSr>(
          onSR: (context, sr) => sr.mapOrNull(
            showStoreList: (_) async {
              final result = await context.router.push(PointListModalRoute());
              if (result is Store && context.mounted) {
                context.read<CartBloc>().add(CartEvent.initCart(store: result));
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
            submit: (sr) {
              final router = context.router.root;
              return WidgetsBinding.instance.addPostFrameCallback(
                (_) async {
                  router.navigate(const MainRoute());
                  router.push(const NewOrderInfoRoute());
                },
              );
            },
            cancelPayment: (sr) {
              final router = context.router.root;
              return WidgetsBinding.instance.addPostFrameCallback(
                (_) => router.navigate(const MainRoute()),
              );
            },
            processPayment: _processPayment,
            storeNotSelected: (sr) => context.router.navigate(
              const FridgeNotSelectedPopup(),
            ),
            showUnfinishedPurchaseOnboarding: (_) {
              return Future.delayed(const Duration(seconds: 1)).then(
                (value) {
                  if (!mounted) return;
                  _entry = OverlayEntry(
                    builder: (_) => UnfinishedPurchaseOnboardingOverlay(
                      onClose: () {
                        _entry?.remove();
                        _entry = null;
                      },
                    ),
                  );
                  Overlay.of(context, rootOverlay: true).insert(_entry!);
                  return context.read<CartBloc>().add(
                      const CartEvent.onUnfinishedPurchaseOnboardingComplete());
                },
              );
            },
            showPaymentTypeList: (sr) async {
              final result = await context.router.push<PaymentType>(
                ChoosePaymentTypeRoute3(
                  storeId: sr.storeId,
                ),
              );

              if (result != null && context.mounted) {
                return context.read<CartBloc>().add(
                      CartEvent.onPaymentTypeSelected(result),
                    );
              }
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
          buildWhen: (oldState, newState) =>
              oldState.status != newState.status ||
              oldState.products != newState.products,
          builder: (context, state) {
            if (state.status == CartStateStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return Stack(
              children: [
                Column(
                  children: [
                    const Expanded(
                      child: CartView(),
                    ),
                    _CartBottomSheetWidget(showCancelOrder: widget.restoreCart),
                  ],
                ),
                Positioned.fill(
                  child: LoadingOverlay(
                    isLoading: state.status == CartStateStatus.updating,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _processPayment(ProcessPaymentSr sr) async {
    final cartBloc = context.read<CartBloc>();

    final handler = PaymentHandler(
      payment: sr.payment,
      storeId: sr.storeId,
      onSbpBankOpen: () {
        cartBloc.add(const CartEvent.onSbpBankOpen());
      },
    );

    final result = await handler.processPayment(context);

    if (result) {
      return cartBloc.add(const CartEvent.onSuccessPayment());
    }
    return cartBloc.add(const CartEvent.onFailurePayment());
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

class LoadingOverlay extends StatefulWidget {
  const LoadingOverlay({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 0.3).animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant LoadingOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isLoading == widget.isLoading) {
      return;
    }
    if (widget.isLoading) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _controller.value != 0.0,
      child: Container(
        alignment: Alignment.center,
        color: Colors.black.withOpacity(_opacityAnimation.value),
        child: Opacity(
          opacity: _controller.value,
          child: const CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CartHeader extends StatelessWidget {
  const CartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(AppInsets.padding16),
          textStyle: Theme.of(context).textTheme.titleSmall,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.medium),
          ),
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      child: BlocBuilder<CartBloc, CartState>(
        buildWhen: (oldState, state) => oldState.fridgeId != state.fridgeId,
        builder: (context, state) {
          final store = state.store;
          if (store == null) {
            return const SelectStoreButton();
          }
          return CartHeaderActions(
            store: store,
            fridgeId: state.fridgeId,
          );
        },
      ),
    );
  }
}

class SelectStoreButton extends StatelessWidget {
  const SelectStoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.error,
        side: BorderSide(color: Theme.of(context).colorScheme.error),
      ),
      onPressed: () {
        context.read<CartBloc>().add(
              const CartEvent.onStoreListButtonPressed(),
            );
      },
      child: Text(
        context.tr(LocaleKeys.fridge_chooseProductsFridge),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CartHeaderActions extends StatelessWidget {
  static const _kButtonSize = Size(double.infinity, 75.0);

  const CartHeaderActions({
    super.key,
    required this.store,
    this.fridgeId,
  });

  final Store store;
  final String? fridgeId;

  @override
  Widget build(BuildContext context) {
    final onLeftButtonPressed = _getLeftButtonPressed(context);
    final leftButtonActionText = _getLeftButtonActionText(context);

    // final leftButtonConfig = _getLeftButtonConfiguration(context);
    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: OutlinedButtonTheme.of(context).style?.copyWith(
              minimumSize: const WidgetStatePropertyAll(_kButtonSize),
              maximumSize: const WidgetStatePropertyAll(_kButtonSize),
            ),
      ),
      child: Row(
        children: [
          Expanded(
            child: LeftButton(
              key: OnboardingKeys.fridgeCardKey,
              store: store,
              onPressed: onLeftButtonPressed,
              actionText: leftButtonActionText,
            ),
          ),
          const SizedBox(width: AppInsets.padding16),
          const Expanded(
            child: SearchButton(),
          ),
        ],
      ),
    );
  }

  VoidCallback _getLeftButtonPressed(BuildContext context) {
    if (fridgeId != null) {
      return () => context.read<FridgeQrScannerBloc>().add(
            FridgeQrScannerEvent.onReopenOpenFridge(fridgeId),
          );
    }
    return () => context.read<CartBloc>().add(
          const CartEvent.onStoreListButtonPressed(),
        );
  }

  Widget _getLeftButtonActionText(BuildContext context) {
    if (fridgeId != null) {
      return Text(context.tr(LocaleKeys.fridge_open));
    }
    return Text(context.tr(LocaleKeys.fridge_another));
  }

// ({VoidCallback onPressed, Widget actionText}) _getLeftButtonConfiguration(
//     BuildContext context) {
//   if (fridgeId != null) {
//     return (
//       onPressed: () => context
//           .read<FridgeQrScannerBloc>()
//           .add(FridgeQrScannerEvent.onReopenOpenFridge(fridgeId)),
//       actionText: Text(
//         context.tr(LocaleKeys.fridge_open),
//       ),
//     );
//   }
//   return (
//     onPressed: () => context
//         .read<CartBloc>()
//         .add(const CartEvent.onStoreListButtonPressed()),
//     actionText: Text(
//       context.tr(LocaleKeys.fridge_open),
//     ),
//   );
// }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        final store = context.read<CartBloc>().state.store;
        if (store != null) {
          final result =
              await context.router.push(CartSearchRoute(store: store));
          if (result is Map<Product, double> && context.mounted) {
            context
                .read<CartBloc>()
                .add(CartEvent.onAddMultipleProducts(result));
          }
        }
      },
      child: AutoSizeText(
        context.tr(LocaleKeys.fridge_searchProduct),
        textAlign: TextAlign.left,
        minFontSize: 8,
        maxLines: 2,
      ),
    );
  }
}

class LeftButton extends StatelessWidget {
  const LeftButton({
    required this.store,
    required this.onPressed,
    required this.actionText,
    super.key,
  });

  final Store store;
  final VoidCallback onPressed;
  final Widget actionText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr(
              LocaleKeys.fridge_fridgeNameWithAddress,
              namedArgs: {
                'name': store.name ?? '',
                'address': store.address ?? '',
              },
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          actionText,
        ],
      ),
    );
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(AppInsets.padding16),
          child: CartHeader(),
        ),
        Expanded(
          child: BlocBuilder<CartBloc, CartState>(
            buildWhen: (oldState, newState) =>
                oldState.products != newState.products,
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  CartListView(
                    children: state.products,
                    onDelete: (item) {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.onDeletePressed(product: item));
                      HapticFeedback.mediumImpact();
                    },
                    onDecrement: (item) {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.onDecrementPressed(product: item));
                      HapticFeedback.mediumImpact();
                    },
                    onIncrement: (item) {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.onIncrementPressed(product: item));
                      HapticFeedback.mediumImpact();
                    },
                    // onCartItemPressed: (item) {
                    //   context.router.push(EditProductRoute(product: item));
                    // },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CartBottomSheetWidget extends StatelessWidget {
  const _CartBottomSheetWidget({
    super.key,
    this.showCancelOrder = false,
  });

  final bool showCancelOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppBorderRadius.large),
          topRight: Radius.circular(AppBorderRadius.large),
        ),
      ),
      elevation: 20.0,
      shadowColor: Colors.black,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppInsets.padding8),
          child: Column(
            children: [
              // const _CartBonusesSpend(),
              const _CartPaymentWidget(),
              const SizedBox(
                height: AppInsets.padding8,
              ),
              _CartActionButtonWidget(
                onPressed: () {
                  context.read<CartBloc>().add(const CartEvent.onCreateOrder());
                },
                onClearPressed:
                    showCancelOrder ? () => context.router.pop() : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CartBonusesSpend extends StatefulWidget {
  const _CartBonusesSpend({super.key});

  @override
  State<_CartBonusesSpend> createState() => _CartBonusesSpendState();
}

class _CartBonusesSpendState extends State<_CartBonusesSpend> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (oldState, state) =>
          oldState.useBonuses != state.useBonuses ||
          oldState.canUseBonuses != state.canUseBonuses ||
          oldState.bonusesToSpent != state.bonusesToSpent,
      builder: (context, state) {
        if (!state.canUseBonuses) {
          return const SizedBox.shrink();
        }

        return CustomSwitchListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding8,
            horizontal: AppInsets.padding16,
          ),
          value: state.useBonuses,
          onChanged: (value) {
            setState(() {
              context
                  .read<CartBloc>()
                  .add(CartEvent.onUseBonusesChange(useBonuses: value));
              HapticFeedback.mediumImpact();
            });
          },
          titleAlignment: ListTileTitleAlignment.titleHeight,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.tr(LocaleKeys.cart_useBonuses)),
              if (state.bonusesToSpent != null && state.useBonuses)
                Text(
                  context.tr(
                    LocaleKeys.cart_bonusesCanSpent,
                    args: [
                      state.bonusesToSpent!.toFormatString(),
                    ],
                  ),
                  style: ListTileTheme.of(context).subtitleTextStyle,
                )
            ],
          ),
          secondary: Image.asset(
            'assets/images/rooster.png',
            width: 24.0,
            height: 24.0,
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}

class _CartPaymentWidget extends StatelessWidget {
  const _CartPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (oldState, newState) =>
          oldState.orderPrice != newState.orderPrice ||
          oldState.paymentType != newState.paymentType ||
          oldState.currencySymbol != newState.currencySymbol,
      builder: (context, state) {
        return SelectedPaymentTypeWidget(
          paymentType: state.paymentType,
          finalSum: state.orderPrice,
          currencySymbol: state.currencySymbol,
        );
      },
    );
  }
}

class SelectedPaymentTypeWidget extends StatelessWidget {
  const SelectedPaymentTypeWidget({
    super.key,
    required this.finalSum,
    required this.currencySymbol,
    this.paymentType,
  });

  final PaymentType? paymentType;
  final double finalSum;
  final String currencySymbol;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (paymentType != null) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (paymentType!.imageUrl != null)
            Padding(
              padding: const EdgeInsets.only(
                right: AppInsets.padding8,
              ),
              child: CachedNetworkImage(
                width: 24.0,
                height: 24.0,
                imageUrl: paymentType!.imageUrl!,
                fit: BoxFit.contain,
              ),
            ),
          Text(
            paymentType!.name,
          ),
        ],
      );
    } else {
      child = Text(
        context.tr(LocaleKeys.cart_finalSumForPayment),
      );
    }

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
          vertical: AppInsets.padding8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child,
            Text(
              Currency.convertToPrice(
                currencySymbol,
                finalSum,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CartActionButtonWidget extends StatelessWidget {
  const _CartActionButtonWidget({
    super.key,
    this.onPressed,
    this.onClearPressed,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onClearPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (oldState, newState) =>
          oldState.validToChoosePayment != newState.validToChoosePayment ||
          oldState.status != newState.status,
      builder: (context, state) {
        final Widget child;
        if (state.status != CartStateStatus.orderSending) {
          child = Text(
            context.tr(LocaleKeys.cart_checkout),
          );
        } else {
          child = SizedBox(
            height: 20.0,
            width: 20.0,
            child: Builder(builder: (context) {
              final color = DefaultTextStyle.of(context).style.color;
              return CircularProgressIndicator.adaptive(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(
                  color ?? Theme.of(context).colorScheme.onPrimary,
                ),
              );
            }),
          );
        }
        final enabled = state.validToChoosePayment &&
            state.status != CartStateStatus.orderSending;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding16,
            vertical: AppInsets.padding8,
          ),
          child: Column(
            children: [
              FilledButton(
                onPressed: enabled ? onPressed : null,
                child: child,
              ),
              if (onClearPressed != null)
                Padding(
                  padding: const EdgeInsets.only(top: AppInsets.padding8),
                  child: OutlinedButton(
                    key: OnboardingKeys.didNotBuyAnythingKey,
                    style: TextButton.styleFrom(
                      side: BorderSide.none,
                    ),
                    onPressed: onClearPressed,
                    child: Text(
                      context.tr(LocaleKeys.cart_didNotBuyAnything),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
