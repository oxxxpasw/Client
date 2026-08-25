import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
    this.onPressedNext,
    this.onPressedSkip,
  });

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final rect = Rect.fromCenter(
      center: Offset(width / 2, height / 2),
      width: AppInsets.padding64,
      height: AppInsets.padding64,
    );
    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned.fromRect(
            rect: rect,
            child: Center(
              child: Image.asset('assets/images/marker.png'),
            ),
          ),
          Positioned(
            left: rect.left - AppInsets.padding32,
            right: AppInsets.padding16,
            top: height - rect.top + AppInsets.padding32,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page2_title),
              ),
              onPressedNext: onPressedNext,
              onPressedSkip: onPressedSkip,
            ),
          ),
          Positioned(
            left: rect.left - AppInsets.padding48,
            top: height - rect.top - AppInsets.padding24,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow2.svg',
            ),
          )
        ],
      ),
    );
  }
}
