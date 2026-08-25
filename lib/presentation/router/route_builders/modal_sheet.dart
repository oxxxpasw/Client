import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import '../../theme/models/colors/app_colors.dart';

class CupertinoBarBottomSheet extends StatelessWidget {
  final Widget child;
  final Clip? clipBehavior;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final SystemUiOverlayStyle? overlayStyle;

  const CupertinoBarBottomSheet({
    super.key,
    required this.child,
    this.clipBehavior,
    this.shape,
    this.backgroundColor,
    this.elevation,
    this.overlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle ?? SystemUiOverlayStyle.light,
      child: Material(
        shape: shape ??
            const RoundedRectangleBorder(
              side: BorderSide(),
            ),
        clipBehavior: clipBehavior ?? Clip.hardEdge,
        color: backgroundColor ?? Colors.white,
        elevation: elevation ?? 2,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: AppInsets.padding24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: child,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(AppInsets.padding8),
                  child: Container(
                    height: AppInsets.padding8,
                    width: AppInsets.padding56,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(AppInsets.padding8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<T?> showAdaptiveModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color barrierColor = Colors.black87,
  bool bounce = true,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? topControl,
  Duration? duration,
  RouteSettings? settings,
  SystemUiOverlayStyle? overlayStyle,
  double? closeProgressThreshold,
}) async {
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));
  final route = defaultTargetPlatform == TargetPlatform.iOS
      ? _cupertinoModalSheetRoute(
          context: context,
          builder: builder,
          bounce: bounce,
          closeProgressThreshold: closeProgressThreshold,
          secondAnimation: secondAnimation,
          expand: expand,
          isDismissible: isDismissible,
          barrierColor: barrierColor,
          enableDrag: enableDrag,
          animationCurve: animationCurve,
          duration: duration,
          settings: settings,
          backgroundColor: backgroundColor,
        )
      : _materialModalSheetRoute(
          context: context,
          builder: builder,
          bounce: bounce,
          closeProgressThreshold: closeProgressThreshold,
          secondAnimation: secondAnimation,
          expand: expand,
          isDismissible: isDismissible,
          barrierColor: barrierColor,
          enableDrag: enableDrag,
          animationCurve: animationCurve,
          duration: duration,
          settings: settings,
          backgroundColor: backgroundColor,
        );

  final result =
      await Navigator.of(context, rootNavigator: useRootNavigator).push(route);
  return result;
}

Route<T> adaptiveModalSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return cupertinoModalSheetBuilder(context, child, page);
  }
  return materialModalSheetBuilder(context, child, page);
}

Route<T> roundedMaterialModalSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  var height = double.infinity;
  var mediaQuery = MediaQuery.maybeOf(context);
  if (mediaQuery != null) {
    height = mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top;
  }
  return _materialModalSheetRoute<T>(
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(double.infinity, height),
      ),
      child: child,
    ),
    bounce: true,
    expand: false,
    isDismissible: true,
    barrierColor: Colors.black87,
    enableDrag: true,
    settings: page,
    context: context,
    clipBehavior: Clip.antiAlias,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppInsets.padding16),
        topRight: Radius.circular(AppInsets.padding16),
      ),
    ),
  );
}

Route<T> materialModalSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  var height = double.infinity;
  var mediaQuery = MediaQuery.maybeOf(context);
  if (mediaQuery != null) {
    height = mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top;
  }
  return _materialModalSheetRoute<T>(
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(double.infinity, height),
      ),
      child: child,
    ),
    bounce: true,
    expand: false,
    isDismissible: true,
    barrierColor: Colors.black87,
    enableDrag: true,
    settings: page,
    context: context,
  );
}

Route<T> cupertinoModalSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  var height = double.infinity;
  var mediaQuery = MediaQuery.maybeOf(context);
  if (mediaQuery != null) {
    height = mediaQuery.size.height -
        kToolbarHeight -
        mediaQuery.padding.top -
        AppInsets.padding24;
  }
  return _cupertinoModalSheetRoute<T>(
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(double.infinity, height),
      ),
      child: child,
    ),
    bounce: true,
    expand: false,
    isDismissible: true,
    barrierColor: Colors.black87,
    enableDrag: true,
    settings: page,
    context: context,
  );
}

Route<T> _materialModalSheetRoute<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  bool bounce = false,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool isDismissible = true,
  bool enableDrag = true,
  Duration? duration,
  RouteSettings? settings,
  double? closeProgressThreshold,
}) {
  return ModalSheetRoute<T>(
    builder: builder,
    closeProgressThreshold: closeProgressThreshold,
    containerBuilder: _materialContainerBuilder(
      context,
      backgroundColor: backgroundColor ??
          Theme.of(context)
              .extension<CustomThemeExtension>()!
              .primaryBackground,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      theme: Theme.of(context),
    ),
    secondAnimationController: secondAnimation,
    bounce: bounce,
    expanded: expand,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    isDismissible: isDismissible,
    modalBarrierColor: barrierColor,
    enableDrag: enableDrag,
    animationCurve: animationCurve,
    duration: duration,
    settings: settings,
  );
}

Route<T> _cupertinoModalSheetRoute<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  bool bounce = false,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool isDismissible = true,
  bool enableDrag = true,
  Duration? duration,
  RouteSettings? settings,
  double? closeProgressThreshold,
}) {
  return ModalSheetRoute<T>(
    builder: builder,
    closeProgressThreshold: closeProgressThreshold,
    containerBuilder: (_, __, child) => CupertinoBarBottomSheet(
      clipBehavior: clipBehavior,
      shape: shape,
      backgroundColor: backgroundColor ??
          Theme.of(context)
              .extension<CustomThemeExtension>()!
              .primaryBackground,
      elevation: elevation,
      overlayStyle: SystemUiOverlayStyle.dark,
      child: child,
    ),
    secondAnimationController: secondAnimation,
    bounce: bounce,
    expanded: expand,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    isDismissible: isDismissible,
    modalBarrierColor: barrierColor,
    enableDrag: enableDrag,
    animationCurve: animationCurve,
    duration: duration,
    settings: settings,
  );
}

WidgetWithChildBuilder _materialContainerBuilder(BuildContext context,
    {Color? backgroundColor,
    double? elevation,
    ThemeData? theme,
    Clip? clipBehavior,
    ShapeBorder? shape}) {
  final bottomSheetTheme = Theme.of(context).bottomSheetTheme;
  final color = backgroundColor ??
      bottomSheetTheme.modalBackgroundColor ??
      bottomSheetTheme.backgroundColor;
  final effectiveElevation = elevation ?? bottomSheetTheme.elevation ?? 0.0;
  final effectiveShape = shape ?? bottomSheetTheme.shape;
  final effectiveClipBehavior =
      clipBehavior ?? bottomSheetTheme.clipBehavior ?? Clip.none;

  Widget result(context, animation, child) => MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Material(
          color: color,
          elevation: effectiveElevation,
          shape: effectiveShape,
          clipBehavior: effectiveClipBehavior,
          child: child,
        ),
      );
  if (theme != null) {
    return (context, animation, child) =>
        Theme(data: theme, child: result(context, animation, child));
  } else {
    return result;
  }
}

const _kBarHeight = 30.0;

Route<T> barModalSheetRouteBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  var height = double.infinity;
  var mediaQuery = MediaQuery.maybeOf(context);
  if (mediaQuery != null) {
    height =
        mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top - 30.0;
  }

  MediaQueryData getMediaQueryData(BuildContext context) {
    final data = MediaQuery.of(context);
    return data.copyWith(
      padding: data.padding.copyWith(
        top: _kBarHeight,
      ),
      viewPadding: data.viewPadding.copyWith(
        top: math.max(
            0.0, data.viewPadding.top - data.padding.top + _kBarHeight),
      ),
    );
  }

  return ModalSheetRoute<T>(
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(double.infinity, height),
      ),
      child: child,
    ),
    containerBuilder: (_, __, child) => Material(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).colorScheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            AppBorderRadius.large,
          ),
          topRight: Radius.circular(
            AppBorderRadius.large,
          ),
        ),
      ),
      child: Stack(
        children: [
          MediaQuery(
            data: getMediaQueryData(context),
            child: child,
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            child: Container(
              height: _kBarHeight,
              alignment: Alignment.center,
              child: Container(
                height: 4,
                width: 80,
                decoration: ShapeDecoration(
                  shape: const StadiumBorder(),
                  color: Theme.of(context)
                      .extension<CustomThemeExtension>()!
                      .labelColor,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    bounce: true,
    expanded: false,
    isDismissible: true,
    enableDrag: true,
    settings: page,
  );
}
