import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CoffeeProcessingScreen extends StatefulWidget {
  const CoffeeProcessingScreen({super.key, this.onSuccess});

  final VoidCallback? onSuccess;

  @override
  State<CoffeeProcessingScreen> createState() => _CoffeeProcessingScreenState();
}

class _CoffeeProcessingScreenState extends State<CoffeeProcessingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 10),
      widget.onSuccess,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextTheme.of(context).bodyLarge?.copyWith(
          fontWeight: FontWeight.w500,
        );

    return Column(
      children: [
        const SizedBox(height: AppInsets.padding32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.coffeeProcessingScreen_title_1
                      .tr(context: context),
                ),
                TextSpan(
                  text: LocaleKeys.coffeeProcessingScreen_title_2
                      .tr(context: context),
                  style: textStyle?.copyWith(
                    color: Theme.of(context)
                        .extension<CustomThemeExtension>()
                        ?.accent,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys.coffeeProcessingScreen_title_3
                      .tr(context: context),
                ),
              ],
              style: textStyle,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Assets.svg.logo3.svg(
              width: 180,
              height: 180,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
