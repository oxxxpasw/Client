import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage6 extends StatelessWidget {
  const OnBoardingPage6({
    super.key,
    this.onScannerPressed,
    this.onConfirmPressed,
  });

  final VoidCallback? onScannerPressed;
  final VoidCallback? onConfirmPressed;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.scannerButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final renderObjectRect =
        renderBox.localToGlobal(Offset.zero) & renderBox.size;

    final longest = renderBox.size.longestSide;

    final rect = Rect.fromCenter(
      center: renderObjectRect.center,
      width: longest + AppInsets.padding16,
      height: longest + AppInsets.padding16,
    );

    final height = MediaQuery.of(context).size.height;

    return OnboardingBackground(
      windowRect: rect,
      onWindowPressed: onScannerPressed,
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding48,
            right: AppInsets.padding48,
            bottom: height - rect.top + AppInsets.padding16,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page6_title),
              ),
              nextLabel: Text(context.tr(LocaleKeys.onboarding_confirm)),
              onPressedNext: onConfirmPressed,
            ),
          ),
          Positioned(
            left: rect.left - AppInsets.padding56,
            bottom: height - rect.top - AppInsets.padding16,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow5.svg',
            ),
          )
        ],
      ),
    );
  }
}
