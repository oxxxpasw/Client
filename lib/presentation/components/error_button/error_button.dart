import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/additional_text_theme/additional_text_theme.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorButtonWidget extends StatelessWidget {
  const ErrorButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
          vertical: AppInsets.padding4,
        ),
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        context.router.push(const ReportProblemPopup());
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            DerevenkaDobrenkaIcons.error,
            size: 28.0,
          ),
          const SizedBox(
            width: AppInsets.padding4,
          ),
          Text(
            context.tr(LocaleKeys.reportProblem_buttonText),
            style: Theme.of(context)
                .extension<AdditionalTextThemeExtension>()!
                .labelExtraSmall,
          ),
        ],
      ),
    );
  }
}
