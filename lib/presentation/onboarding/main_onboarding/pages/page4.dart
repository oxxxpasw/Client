import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/components/oboarding_background.dart';
import 'package:sosedifedi/presentation/onboarding/components/tooltip.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingPage4 extends StatelessWidget {
  const OnBoardingPage4({
    super.key,
    this.onPressedNext,
    this.onPressedSkip,
  });

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;

  @override
  Widget build(BuildContext context) {
    final renderBox = OnboardingKeys.catalogButtonKey.currentContext
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
      child: Stack(
        children: [
          Positioned(
            left: AppInsets.padding16,
            right: MediaQuery.of(context).size.width -
                renderObjectRect.center.dx +
                AppInsets.padding24,
            bottom: height - rect.top + AppInsets.padding24,
            child: OnboardingTooltip(
              title: Text(
                context.tr(LocaleKeys.onboarding_page4_title),
              ),
              onPressedNext: onPressedNext,
              onPressedSkip: onPressedSkip,
            ),
          ),
          Positioned(
            left: renderObjectRect.left,
            bottom: height - renderObjectRect.top + AppInsets.padding16,
            child: SvgPicture.asset(
              'assets/svg/arrows/arrow3.svg',
            ),
          )
        ],
      ),
    );
  }
}
