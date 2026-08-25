import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/onboarding/onboarding.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';
import 'pages/page5.dart';
import 'pages/page6.dart';
import 'pages/start_page.dart';

class OnboardingOverlay extends StatefulWidget {
  const OnboardingOverlay({
    super.key,
    required this.onClose,
  });

  final VoidCallback onClose;

  @override
  State<OnboardingOverlay> createState() => _OnboardingOverlayState();
}

class _OnboardingOverlayState extends State<OnboardingOverlay> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool _ignore = true;

  @override
  Widget build(BuildContext context) {
    Future<void> onClose() async {
      setState(() {
        _ignore = false;
      });
      final result = await showAdaptiveConfirmDialog(
        useRootNavigator: false,
        context: _navigatorKey.currentContext!,
        defaultAction: ConfirmDialogAction.cancel,
        title: Text(
          context.tr(LocaleKeys.onboarding_exitQuestion),
        ),
      );
      if (result == ConfirmDialogResult.confirm) {
        widget.onClose();
      }
      setState(() {
        _ignore = true;
      });
    }

    return Stack(
      children: [
        Onboarding(
          onEnd: widget.onClose,
          bodyBuilder: (context, index, next) {
            return switch (index) {
              0 => OnBoardingStartPage(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              1 => OnBoardingPage1(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              2 => OnBoardingPage2(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              3 => OnBoardingPage3(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              4 => OnBoardingPage4(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              5 => OnBoardingPage5(
                  onPressedSkip: onClose,
                  onPressedNext: next,
                ),
              6 => OnBoardingPage6(
                  onConfirmPressed: next,
                  onScannerPressed: () {
                    context.router.push(FridgeQrScanRoute());
                    next();
                  },
                ),
              _ => const SizedBox.shrink(),
            };
          },
          itemCount: 7,
        ),
        IgnorePointer(
          ignoring: _ignore,
          child: Navigator(
            key: _navigatorKey,
            onGenerateRoute: (_) {
              return PageRouteBuilder(
                pageBuilder: (context, _, __) {
                  return const SizedBox.shrink();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
