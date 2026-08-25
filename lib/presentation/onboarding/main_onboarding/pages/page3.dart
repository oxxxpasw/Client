import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({
    super.key,
    this.onPressedNext,
    this.onPressedSkip,
  });

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;

  @override
  State<OnBoardingPage3> createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.storeListButtonKey.currentContext
        ?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return const SizedBox.shrink();
    }

    final rect = (renderBox.localToGlobal(Offset.zero) & renderBox.size)
        .inflate(AppInsets.padding8);
    final height = MediaQuery.of(context).size.height;

    return OnboardingBackground(
      windowRect: rect,
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding48,
            right: MediaQuery.of(context).size.width -
                rect.center.dx +
                AppInsets.padding24,
            bottom: height - rect.top + AppInsets.padding16,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page3_title),
              ),
              onPressedNext: widget.onPressedNext,
              onPressedSkip: widget.onPressedSkip,
            ),
          ),
          Positioned(
            left: rect.center.dx - AppInsets.padding24,
            bottom: height - rect.top + AppInsets.padding16,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow3.svg',
            ),
          )
        ],
      ),
    );
  }
}
