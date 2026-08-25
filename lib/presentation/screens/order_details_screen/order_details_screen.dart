import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart';
import 'package:sosedifedi/domain/bloc/order_details_bloc/order_details_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/payment/payment.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/order_details_screen/components/order_details_widget.dart';
import 'package:sosedifedi/presentation/screens/order_details_screen/components/unpaid_order_details_widget.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class OrderDetailsScreen extends StatelessWidget implements AutoRouteWrapper {
  const OrderDetailsScreen({
    super.key,
    @pathParam required this.orderId,
  });

  final String orderId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OrderDetailsBloc>(
      create: (context) => GetIt.I.get(param1: orderId)..loadData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Material(
        color: ColorScheme.of(context).surface,
        child:
            SrBlocBuilder<OrderDetailsBloc, OrderDetailsState, OrderDetailsSr>(
          onSR: (context, sr) => sr.map(
            error: (sr) => Messenger.showMessage(
              context: context,
              message: sr.error,
            ),
            processPayment: (sr) => _processPayment(sr, context),
            receiptNotReady: (_) => showPopup(
              context: context,
              title: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  context
                      .tr(LocaleKeys.orderDetails_receiptNotReadyPopup_title),
                ),
              ),
              confirmLabel: Text(
                context.tr(LocaleKeys.orderDetails_receiptNotReadyPopup_action),
              ),
            ),
            showPaymentTypeList: (sr) async {
              final result = await context.router.push(
                ChoosePaymentTypeRoute3(
                  storeId: sr.storeId,
                ),
              );
              if (result is PaymentType && context.mounted) {
                context.read<OrderDetailsBloc>().onPaymentTypeSelected(result);
              }
              return null;
            },
            showCreateReview: (sr) => context.router.push(
              FeedbackRoute(
                type: FeedbackType.purchase,
                order: sr.order,
              ),
            ),
          ),
          builder: (context, state) {
            if (state.status == OrderDetailsStatus.init ||
                state.status == OrderDetailsStatus.loading) {
              return const SafeArea(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            }
            if (state.isUnpaidOrder) {
              return UnpaidOrderDetailsWidget(
                order: state.order!,
                canPayOrder: state.isUnpaidOrder,
                onPayOrderPressed: () =>
                    context.read<OrderDetailsBloc>().onPayOrderPressed(),
                isLoading: state.status == OrderDetailsStatus.creatingPayment,
                onCancelPressed: () => onCancel(context),
              );
            }
            return OrderDetailsWidget(
              order: state.order!,
              onCreateReviewPressed: () =>
                  context.read<OrderDetailsBloc>().onCreateReviewPressed(),
            );
          },
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
      context.read<OrderDetailsBloc>().onOrderPaid();
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
      context.read<OrderDetailsBloc>().onCancelOrderPressed();
    }
  }
}
