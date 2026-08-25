import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/send_feedback_bloc/send_feedback_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import 'banner_widget.dart';

class FeedbackBannerWidget extends StatelessWidget {
  const FeedbackBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SendFeedbackBloc>(
      create: (context) => GetIt.I.get(),
      child: const _FeedbackBannerView(),
    );
  }
}

class _FeedbackBannerView extends StatelessWidget {
  const _FeedbackBannerView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendFeedbackBloc, SendFeedbackState>(
      builder: (context, state) {
        return BannerWidget(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                context.tr(LocaleKeys.feedbackBanner_title),
              ),
              const SizedBox(
                width: AppInsets.padding4,
              ),
              const Icon(
                DerevenkaDobrenkaIcons.arrowRight,
              ),
            ],
          ),
          subtitle: Text(
            context.tr(LocaleKeys.feedbackBanner_message),
          ),
          onPressed: () =>
              context.read<SendFeedbackBloc>().onFeedbackButtonPressed(),
        );
      },
    );
  }
}
