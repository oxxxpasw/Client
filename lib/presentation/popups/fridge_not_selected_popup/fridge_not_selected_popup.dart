import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FridgeNotSelectedPopup extends StatelessWidget {
  const FridgeNotSelectedPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox.shrink(),
        Text(
          context.tr(LocaleKeys.cart_storeNotSelected_title),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding16),
          child: FilledButtonWithArrow(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            label: Text(
              context.tr(LocaleKeys.cart_storeNotSelected_confirm),
            ),
          ),
        ),
      ],
    );
  }
}
