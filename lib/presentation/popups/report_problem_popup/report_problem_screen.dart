import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart';
import 'package:sosedifedi/domain/bloc/report_problem_bloc/report_problem_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ReportProblemScreen extends StatelessWidget implements AutoRouteWrapper {
  const ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr(LocaleKeys.reportProblem_label),
        ),
        leading: const AutoLeadingButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.tr(LocaleKeys.reportProblem_description),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: AppInsets.padding16,
              ),
              // SizedBox(
              //   width: double.infinity,
              //   child: FilledButtonWithArrow(
              //     onPressed: () {
              //       context.router.popAndPush(const FeedbackRoute());
              //     },
              //     label: Text(
              //       context.tr(LocaleKeys.reportProblem_makePhoneCall),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReportProblemBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}
