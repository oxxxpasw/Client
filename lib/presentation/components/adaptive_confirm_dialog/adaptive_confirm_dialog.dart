import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';

enum ConfirmDialogResult {
  cancel,
  confirm,
}

enum ConfirmDialogAction {
  none,
  cancel,
  confirm,
}

Future<ConfirmDialogResult> showAdaptiveConfirmDialog({
  required BuildContext context,
  Widget? title,
  Widget? message,
  String? confirmLabel,
  String? cancelLabel,
  ConfirmDialogAction defaultAction = ConfirmDialogAction.none,
  ConfirmDialogAction destructiveAction = ConfirmDialogAction.none,
  bool barrierDismissible = true,
  RouteSettings? routeSettings,
  bool useRootNavigator = true,
  VerticalDirection actionsOverflowDirection = VerticalDirection.up,
  Color? barrierColor = Colors.black54,
  String? barrierLabel,
  bool useSafeArea = true,
  Offset? anchorPoint,
  TraversalEdgeBehavior? traversalEdgeBehavior,
}) async {
  void pop({
    required BuildContext context,
    required ConfirmDialogResult result,
  }) =>
      Navigator.of(
        context,
        rootNavigator: useRootNavigator,
      ).pop(result);

  final theme = Theme.of(context);
  final Future<ConfirmDialogResult?> result;
  switch (theme.platform) {
    case (TargetPlatform.macOS):
    case (TargetPlatform.iOS):
      result = showCupertinoDialog<ConfirmDialogResult>(
        routeSettings: routeSettings,
        useRootNavigator: useRootNavigator,
        context: context,
        anchorPoint: anchorPoint,
        barrierLabel: barrierLabel,
        barrierDismissible: barrierDismissible,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: title,
            content: message,
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () => pop(
                  context: context,
                  result: ConfirmDialogResult.cancel,
                ),
                isDestructiveAction:
                    destructiveAction == ConfirmDialogAction.cancel,
                isDefaultAction: defaultAction == ConfirmDialogAction.cancel,
                child: Text(cancelLabel ?? context.tr(LocaleKeys.no)),
              ),
              CupertinoDialogAction(
                onPressed: () => pop(
                  context: context,
                  result: ConfirmDialogResult.confirm,
                ),
                isDestructiveAction:
                    destructiveAction == ConfirmDialogAction.confirm,
                isDefaultAction: defaultAction == ConfirmDialogAction.confirm,
                child: Text(confirmLabel ?? context.tr(LocaleKeys.yes)),
              ),
            ],
          );
        },
      );
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      result = showDialog<ConfirmDialogResult>(
        context: context,
        barrierDismissible: barrierDismissible,
        useRootNavigator: useRootNavigator,
        useSafeArea: useSafeArea,
        anchorPoint: anchorPoint,
        traversalEdgeBehavior: traversalEdgeBehavior,
        barrierLabel: barrierLabel,
        barrierColor: barrierColor,
        routeSettings: routeSettings,
        builder: (context) {
          final textStyle = theme.textTheme.labelLarge;
          final color = theme.colorScheme.primary;
          return AlertDialog(
            title: title,
            content: message,
            actionsOverflowDirection: actionsOverflowDirection,
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: color,
                  backgroundColor: Colors.transparent,
                  textStyle: textStyle,
                ),
                onPressed: () => pop(
                  context: context,
                  result: ConfirmDialogResult.cancel,
                ),
                child: Text(cancelLabel ?? context.tr(LocaleKeys.no)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: color,
                  textStyle: textStyle,
                ),
                onPressed: () => pop(
                  context: context,
                  result: ConfirmDialogResult.confirm,
                ),
                child: Text(confirmLabel ?? context.tr(LocaleKeys.yes)),
              ),
            ],
          );
        },
      );
  }
  return await result ?? ConfirmDialogResult.cancel;
}
