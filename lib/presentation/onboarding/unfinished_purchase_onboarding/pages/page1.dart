import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({
    super.key,
    this.onPressedNext,
  });

  final VoidCallback? onPressedNext;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.fridgeCardKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final rect = (renderBox.localToGlobal(Offset.zero) & renderBox.size)
        .inflate(AppInsets.padding8);

    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding72,
            right: AppInsets.padding72,
            top: rect.bottom + AppInsets.padding32,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.unfinishedPurchaseOnboarding_page1_title),
              ),
              buttonsAlignment: MainAxisAlignment.start,
              onPressedNext: onPressedNext,
            ),
          ),
          Positioned(
            left: AppInsets.padding16,
            top: rect.bottom + AppInsets.padding8,
            child: RotatedBox(
              quarterTurns: 2,
              child: SvgPicture.asset(
                'assets/svg/arrows/arrow8.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
