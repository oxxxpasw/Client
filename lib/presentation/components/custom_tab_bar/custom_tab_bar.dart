import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const double _kTabHeight = 46.0;

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    this.controller,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.textScaler,
  });

  final List<Widget> tabs;
  final TabController? controller;
  final bool isScrollable;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final double indicatorWeight;
  final EdgeInsetsGeometry indicatorPadding;
  final Decoration? indicator;
  final bool automaticIndicatorColorAdjustment;
  final TabBarIndicatorSize? indicatorSize;
  final Color? dividerColor;
  final double? dividerHeight;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final WidgetStateProperty<Color?>? overlayColor;
  final DragStartBehavior dragStartBehavior;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final ValueChanged<int>? onTap;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
  final TabAlignment? tabAlignment;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final indicator = Theme.of(context).tabBarTheme.indicator;
    return Material(
      color: Theme.of(context).colorScheme.surface,
      shape: const StadiumBorder(),
      clipBehavior: Clip.antiAlias,
      child: TabBar(
        tabs: tabs,
        controller: controller,
        isScrollable: isScrollable,
        padding: padding,
        indicatorColor: indicatorColor,
        automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment,
        indicatorWeight: indicatorWeight,
        indicatorPadding: indicatorPadding,
        indicator: indicator,
        indicatorSize: indicatorSize,
        dividerColor: dividerColor,
        dividerHeight: dividerHeight,
        labelColor: labelColor,
        labelStyle: labelStyle,
        labelPadding: labelPadding,
        unselectedLabelColor: unselectedLabelColor,
        unselectedLabelStyle: unselectedLabelStyle,
        dragStartBehavior: dragStartBehavior,
        overlayColor: overlayColor,
        mouseCursor: mouseCursor,
        enableFeedback: enableFeedback,
        onTap: onTap,
        physics: physics,
        splashFactory: splashFactory,
        splashBorderRadius: splashBorderRadius,
        tabAlignment: tabAlignment,
        textScaler: textScaler,
      ),
    );
  }

  @override
  Size get preferredSize {
    double maxHeight = _kTabHeight;
    for (final Widget item in tabs) {
      if (item is PreferredSizeWidget) {
        final double itemHeight = item.preferredSize.height;
        maxHeight = math.max(itemHeight, maxHeight);
      }
    }
    return Size.fromHeight(maxHeight + indicatorWeight);
  }
}
