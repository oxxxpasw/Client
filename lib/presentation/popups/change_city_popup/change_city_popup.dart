import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

@RoutePage()
class ChangeCityPopup extends StatelessWidget {
  const ChangeCityPopup({
    super.key,
    required this.newCity,
  });

  final City newCity;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox.shrink(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(
                text: context.tr(LocaleKeys.changeCityPopup_message_1),
              ),
              TextSpan(
                text: newCity.name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context)
                          .extension<CustomThemeExtension>()
                          ?.accent,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextSpan(
                text: context.tr(LocaleKeys.changeCityPopup_message_2),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding16),
          child: FilledButtonWithArrow(
            onPressed: () => context.router.pop(true),
            label: Text(
              context.tr(LocaleKeys.changeCityPopup_action),
            ),
          ),
        ),
      ],
    );
  }
}
