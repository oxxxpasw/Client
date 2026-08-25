import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'dart:math' as math;

class OnBoardingPage5 extends StatelessWidget {
  const OnBoardingPage5({
    super.key,
    this.onPressedNext,
    this.onPressedSkip,
  });

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.userProfileButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final renderObjectRect =
        renderBox.localToGlobal(Offset.zero) & renderBox.size;

    final longest = renderBox.size.longestSide;

    final rect = Rect.fromCenter(
      center: renderObjectRect.center,
      width: longest + AppInsets.padding8,
      height: longest + AppInsets.padding8,
    );

    return OnboardingBackground(
      windowRect: rect,
      windowBorderRadius: BorderRadius.circular(1000),
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding80,
            right: AppInsets.padding40,
            top: rect.bottom + AppInsets.padding48,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page5_title),
              ),
              onPressedNext: onPressedNext,
              onPressedSkip: onPressedSkip,
            ),
          ),
          Positioned(
            left: rect.left + AppInsets.padding24,
            top: rect.bottom + AppInsets.padding8,
            child: Transform.rotate(
              angle: -math.pi / 3.0,
              child: SvgPicture.asset(
                'assets/svg/arrows/arrow2.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
