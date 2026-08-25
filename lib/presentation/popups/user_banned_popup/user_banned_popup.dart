import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/report_problem_bloc/report_problem_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

@RoutePage()
class UserBannedPopup extends StatelessWidget implements AutoRouteWrapper {
  const UserBannedPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: AppInsets.padding16,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          context.tr(LocaleKeys.userBanned_message),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: AppInsets.padding16),
        //   child: FilledButtonWithArrow(
        //     onPressed: () {
        //       context.read<ReportProblemBloc>().makePhoneCall();
        //     },
        //     label: Text(
        //       context.tr(LocaleKeys.userBanned_actionButtonText),
        //     ),
        //   ),
        // ),
      ],
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
