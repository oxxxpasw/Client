import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/domain/bloc/unpaid_order_details_bloc/unpaid_order_details_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/payment/payment.dart';
import 'package:sosedifedi/presentation/onboarding/unpaid_order_onboarding/unpaid_order_onboarding.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/order_details_screen/components/unpaid_order_details_widget.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class UnpaidOrderDetailsScreen extends StatefulWidget implements AutoRouteWrapper {
  const UnpaidOrderDetailsScreen({
    super.key,
  });

  @override
  State<UnpaidOrderDetailsScreen> createState() =>
      _UnpaidOrderDetailsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UnpaidOrderDetailsBloc>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }
}

class _UnpaidOrderDetailsScreenState extends State<UnpaidOrderDetailsScreen> {
  OverlayEntry? _entry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Material(
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Theme(
          data: Theme.of(context).copyWith(
            cardTheme: Theme.of(context).cardTheme.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          child: SrBlocBuilder<UnpaidOrderDetailsBloc, UnpaidOrderDetailsState,
              UnpaidOrderDetailsSr>(
            onSR: (context, sr) => sr.map(
              exit: (sr) => context.router.pop(false),
              error: (sr) => Messenger.showMessage(
                context: context,
                message: sr.error,
              ),
              processPayment: (sr) => _processPayment(sr, context),
              successPayment: (sr) => context.router.popAndPush(
                const NewOrderInfoRoute(),
                result: true,
              ),
              orderCanceled: (sr) => context.router.pop(true),
              showOnboarding: (sr) =>
                  WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  _entry = OverlayEntry(
                    builder: (_) => UnpaidOrderOnboardingOverlay(
                      onClose: () {
                        _entry?.remove();
                        _entry = null;
                      },
                    ),
                  );
                  Overlay.of(context, rootOverlay: true).insert(_entry!);
                  context.read<UnpaidOrderDetailsBloc>().onOnboardingComplete();
                },
              ),
              showPaymentTypeList: (sr) async {
                final result = await context.router.push(
                  ChoosePaymentTypeRoute3(
                    storeId: sr.storeId,
                  ),
                );
                if (result is PaymentType && context.mounted) {
                  context
                      .read<UnpaidOrderDetailsBloc>()
                      .onPaymentTypeSelected(result);
                }
                return null;
              },
            ),
            builder: (context, state) {
              if (state.status == UnpaidOrderDetailsStatus.init ||
                  state.status == UnpaidOrderDetailsStatus.loading) {
                return const SafeArea(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              }
              return UnpaidOrderDetailsWidget(
                order: state.order!,
                canPayOrder: true,
                isLoading:
                    state.status == UnpaidOrderDetailsStatus.creatingPayment,
                onPayOrderPressed: () =>
                    context.read<UnpaidOrderDetailsBloc>().onPayOrderPressed(),
                onCancelPressed: () => onCancel(context),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _processPayment(
      ProcessPaymentSr sr, BuildContext context) async {
    final handler = PaymentHandler(
      payment: sr.payment,
      storeId: sr.storeId,
    );

    await handler.processPayment(context);

    if (context.mounted) {
      context.read<UnpaidOrderDetailsBloc>().onPayment();
    }
  }

  Future<void> onCancel(BuildContext context) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      defaultAction: ConfirmDialogAction.cancel,
      title: Text(
        context.tr(LocaleKeys.orderDetails_cancelOrderDialog_title),
      ),
    );

    if (result == ConfirmDialogResult.confirm && context.mounted) {
      context.read<UnpaidOrderDetailsBloc>().onCancelOrderPressed();
    }
  }
}
