import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/onboarding/onboarding.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

class UnpaidOrderOnboardingOverlay extends StatefulWidget {
  const UnpaidOrderOnboardingOverlay({
    super.key,
    required this.onClose,
  });

  final VoidCallback onClose;

  @override
  State<UnpaidOrderOnboardingOverlay> createState() =>
      _UnpaidOrderOnboardingOverlayState();
}

class _UnpaidOrderOnboardingOverlayState
    extends State<UnpaidOrderOnboardingOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Onboarding(
          onEnd: widget.onClose,
          bodyBuilder: (context, index, next) {
            return switch (index) {
              0 => OnBoardingPage1(
                  onPressedNext: next,
                ),
              1 => OnBoardingPage2(
                  onPressedNext: next,
                ),
              _ => const SizedBox.shrink(),
            };
          },
          itemCount: 2,
        ),
      ],
    );
  }
}
