import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/payment_completion_waiting_bloc/payment_completion_waiting_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class PaymentCompletionWaitingScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const PaymentCompletionWaitingScreen({
    super.key,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onPayment,
  });

  final String paymentId;
  final String storeId;
  final VoidCallback? onPayment;
  final VoidCallback? onFailedPayment;

  @override
  State<PaymentCompletionWaitingScreen> createState() =>
      _PaymentCompletionWaitingScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCompletionWaitingBloc>(
      create: (context) =>
          GetIt.I.get(param1: paymentId)..loadData(storeId: storeId),
      child: this,
    );
  }
}

class _PaymentCompletionWaitingScreenState
    extends State<PaymentCompletionWaitingScreen> {
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
        return const WaitLinkedPaymentWidget();
      },
    );
  }
}

class WaitLinkedPaymentWidget extends StatelessWidget {
  const WaitLinkedPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppInsets.padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator.adaptive(),
          const SizedBox(
            height: AppInsets.padding32,
          ),
          Text(context.tr(LocaleKeys.sbp_waitPayment)),
        ],
      ),
    );
  }
}
