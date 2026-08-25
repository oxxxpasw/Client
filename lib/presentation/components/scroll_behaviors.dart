import 'package:flutter/material.dart';

class ScrollBehaviorWithoutGlow extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class StretchingScrollBehavior extends MaterialScrollBehavior {
  const StretchingScrollBehavior();

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return child;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        break;
    }
    return StretchingOverscrollIndicator(
      axisDirection: details.direction,
      clipBehavior: details.decorationClipBehavior ?? Clip.hardEdge,
      child: child,
    );
  }
}

class ScrollBehaviorGlowOnDown extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    if (details.direction == AxisDirection.down) {
      return GlowingOverscrollIndicator(
        child: child,
        axisDirection: details.direction,
        color: const Color(0xFFFFFFFF),
        showLeading: false,
      );
    } else {
      return child;
    }
  }
}
