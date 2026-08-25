import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({
    super.key,
    required this.child,
    this.windowRect,
    this.onWindowPressed,
    this.windowBorderRadius,
  });

  final Widget child;

  final Rect? windowRect;

  final VoidCallback? onWindowPressed;

  final BorderRadius? windowBorderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8),
                BlendMode.srcOut,
              ),
              child: Stack(
                children: [
                  const Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        backgroundBlendMode: BlendMode.dstOut,
                      ),
                    ),
                  ),
                  if (windowRect != null)
                    Positioned.fromRect(
                      rect: windowRect!,
                      child: GestureDetector(
                        onTap: onWindowPressed,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: windowBorderRadius ??
                                BorderRadius.circular(
                                  AppBorderRadius.medium,
                                ),
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
