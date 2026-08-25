import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

@RoutePage()
class HasUnpaidOrderPopup extends StatelessWidget {
  const HasUnpaidOrderPopup({super.key, this.onPayment});

  final VoidCallback? onPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox.shrink(),
        Text(
          context.tr(LocaleKeys.hasUnpaidOrderPopup_message),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding16),
          child: FilledButtonWithArrow(
            onPressed: () async {
              final result =
                  await context.router.push(const UnpaidOrderDetailsRoute());
              if (result == true) {
                onPayment?.call();
              }
              if (context.mounted) {
                context.router.pop();
              }
            },
            label: Text(
              context.tr(LocaleKeys.hasUnpaidOrderPopup_action),
            ),
          ),
        ),
      ],
    );
  }
}
