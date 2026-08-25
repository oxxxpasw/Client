import 'dart:developer';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AccountQRScreen extends StatefulWidget {
  const AccountQRScreen({
    super.key,
    required this.data,
  });

  final String data;

  @override
  State<AccountQRScreen> createState() => _AccountQRScreenState();
}

class _AccountQRScreenState extends State<AccountQRScreen> {
  @override
  void initState() {
    super.initState();
    try {
      ScreenBrightness().setScreenBrightness(1.0);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Text(
            'Код участника',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(
          height: 1.0,
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Покажите данный код бариста при получении заказа',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding64),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Container(
                      width: constraints.maxWidth,
                      height: constraints.maxWidth,
                      padding: const EdgeInsets.all(AppInsets.padding32),
                      color: Theme.of(context)
                          .extension<CustomThemeExtension>()!
                          .textColor,
                      child: BarcodeWidget(
                        width: double.infinity,
                        height: double.infinity,
                        data: widget.data,
                        barcode: Barcode.qrCode(typeNumber: 2),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    try {
      ScreenBrightness().resetScreenBrightness();
    } catch (e) {
      log(e.toString());
    }
    super.dispose();
  }
}
