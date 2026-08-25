import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
    this.onPressedNext,
  });

  final VoidCallback? onPressedNext;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.unpaidOrderCancelButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final rect = (renderBox.localToGlobal(Offset.zero) & renderBox.size);

    final height = MediaQuery.of(context).size.height;

    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding48,
            right: AppInsets.padding128,
            bottom: height - rect.top + AppInsets.padding24,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.unpaidOrderOnboarding_page2_title),
              ),
              buttonsAlignment: MainAxisAlignment.start,
              onPressedNext: onPressedNext,
            ),
          ),
          Positioned(
            right: AppInsets.padding128,
            bottom: height - rect.top + AppInsets.padding8,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow8.svg',
            ),
          )
        ],
      ),
    );
  }
}
