import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/onboarding/onboarding.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';

class UnfinishedPurchaseOnboardingOverlay extends StatefulWidget {
  const UnfinishedPurchaseOnboardingOverlay({
    super.key,
    required this.onClose,
  });

  final VoidCallback onClose;

  @override
  State<UnfinishedPurchaseOnboardingOverlay> createState() =>
      _UnfinishedPurchaseOnboardingOverlayState();
}

class _UnfinishedPurchaseOnboardingOverlayState
    extends State<UnfinishedPurchaseOnboardingOverlay> {
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
