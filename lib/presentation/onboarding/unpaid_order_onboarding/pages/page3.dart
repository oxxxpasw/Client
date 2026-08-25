import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({
    super.key,
    this.onPressedNext,
  });

  final VoidCallback? onPressedNext;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.unpaidOrderHelpButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final rect = (renderBox.localToGlobal(Offset.zero) & renderBox.size);
    final width = MediaQuery.of(context).size.width;
    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding128,
            right: width - rect.right + AppInsets.padding24,
            top: rect.bottom + AppInsets.padding48,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.unpaidOrderOnboarding_page3_title),
              ),
              nextLabel: Text(context.tr(LocaleKeys.onboarding_confirm)),
              buttonsAlignment: MainAxisAlignment.start,
              onPressedNext: onPressedNext,
            ),
          ),
          Positioned(
            right: width - rect.right + AppInsets.padding16,
            top: rect.bottom + AppInsets.padding8,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow7.svg',
            ),
          )
        ],
      ),
    );
  }
}
