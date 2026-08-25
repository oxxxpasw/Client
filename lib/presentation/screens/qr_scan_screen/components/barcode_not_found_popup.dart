import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class BarcodeNotFoundPopup extends StatelessWidget {
  const BarcodeNotFoundPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox.shrink(),
        Text(
          context.tr(LocaleKeys.fridge_barcodeInput_barcodeNotFound),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding16),
          child: TextButton(
            style: TextButton.styleFrom(
                minimumSize: Size(
              140,
              Theme.of(context)
                      .textButtonTheme
                      .style
                      ?.minimumSize
                      ?.resolve({})?.height ??
                  0.0,
            )),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(
              context.tr(LocaleKeys.fridge_barcodeInput_barcodeNotFoundConfirm),
            ),
          ),
        ),
      ],
    );
  }
}
