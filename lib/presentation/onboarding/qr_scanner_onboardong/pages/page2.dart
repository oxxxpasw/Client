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
    final renderBox = OnboardingKeys.scannerHaveProductsButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final rect = renderBox.localToGlobal(Offset.zero) & renderBox.size;

    final height = MediaQuery.of(context).size.height;

    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned(
            left: rect.left + AppInsets.padding40,
            right: AppInsets.padding96,
            bottom: height - rect.top + AppInsets.padding32,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page8_title),
              ),
              nextLabel: Text(context.tr(LocaleKeys.onboarding_confirm)),
              onPressedNext: onPressedNext,
            ),
          ),
          Positioned(
            left: rect.left + AppInsets.padding16,
            bottom: height - rect.top + AppInsets.padding16,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow6.svg',
            ),
          )
        ],
      ),
    );
  }
}
