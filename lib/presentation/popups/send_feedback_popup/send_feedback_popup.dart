import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/send_feedback_bloc/send_feedback_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class SendFeedBackPopup extends StatelessWidget implements AutoRouteWrapper {
  const SendFeedBackPopup({super.key, this.onPayment});

  final VoidCallback? onPayment;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SendFeedbackBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<SendFeedbackBloc, SendFeedbackState, SendFeedbackSr>(
      onSR: (context, sr) => switch (sr) {
        SendFeedbackSuccessSr() => context.router.pop(),
      },
      builder: (context, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            Text(
              context.tr(LocaleKeys.feedbackPopup_message),
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppInsets.padding16),
              child: FilledButtonWithArrow(
                onPressed: () =>
                    context.read<SendFeedbackBloc>().onFeedbackButtonPressed(),
                label: Text(
                  context.tr(LocaleKeys.feedbackPopup_action),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
