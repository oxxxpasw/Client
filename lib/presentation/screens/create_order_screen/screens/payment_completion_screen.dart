import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/payment_completion_waiting_bloc/payment_completion_waiting_bloc.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class PaymentCompletionScreen extends StatefulWidget implements AutoRouteWrapper {
  const PaymentCompletionScreen({
    super.key,
    required this.payment,
    required this.storeId,
    required this.onFailedPayment,
    required this.currencySymbol,
    this.onChangePayment,
    this.onPayment,
  });

  final Payment payment;
  final String storeId;
  final VoidCallback? onPayment;
  final VoidCallback? onFailedPayment;
  final VoidCallback? onChangePayment;
  final String currencySymbol;

  @override
  State<PaymentCompletionScreen> createState() =>
      _PaymentCompletionScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCompletionWaitingBloc>(
      create: (context) =>
          GetIt.I.get(param1: payment)..loadData(storeId: storeId),
      child: this,
    );
  }
}

class _PaymentCompletionScreenState extends State<PaymentCompletionScreen> {
  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<PaymentCompletionWaitingBloc,
        PaymentCompletionWaitingState, PaymentCompletionWaitingSr>(
      onSR: (context, sr) => switch (sr) {
        PaymentCompletionWaitingErrorSr(:final error) =>
          Messenger.showMessage(context: context, message: error),
        PaymentCompletionWaitingSuccessr() => widget.onPayment?.call(),
        PaymentCompletionWaitingFailedSr() => widget.onFailedPayment?.call(),
      },
      builder: (context, state) {
        return WaitLinkedPaymentWidget(
          sum: widget.payment.amount,
          currencySymbol: widget.currencySymbol,
          onChangePayment: widget.onChangePayment,
        );
      },
    );
  }
}

class WaitLinkedPaymentWidget extends StatelessWidget {
  const WaitLinkedPaymentWidget({
    super.key,
    required this.sum,
    required this.currencySymbol,
    this.onChangePayment,
  });

  final double sum;
  final String currencySymbol;

  final VoidCallback? onChangePayment;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: AppInsets.padding32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
            ),
            child: Text(
              context.tr(LocaleKeys.sbp_waitPayment),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const Expanded(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: FilledButtonWithArrow(
              onPressed: onChangePayment,
              label: Text(
                LocaleKeys.choosePayment_changePaymentType.tr(
                  context: context,
                  args: [
                    Currency.convertToPrice(currencySymbol, sum),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
