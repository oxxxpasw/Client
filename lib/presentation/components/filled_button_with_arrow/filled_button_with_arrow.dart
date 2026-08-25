import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';

class FilledButtonWithArrow extends FilledButton {
  FilledButtonWithArrow({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required Widget label,
    Widget? icon,
  }) : super(
          child: _FilledButtonWithIconChild(
            icon: icon ?? const Icon(DerevenkaDobrenkaIcons.arrowRight2),
            label: label,
            buttonStyle: style,
          ),
        );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final bool useMaterial3 = Theme.of(context).useMaterial3;
    final ButtonStyle buttonStyle = super.defaultStyleOf(context);
    final double defaultFontSize =
        buttonStyle.textStyle?.resolve(const <WidgetState>{})?.fontSize ?? 14.0;
    final double effectiveTextScale =
        MediaQuery.textScalerOf(context).scale(defaultFontSize) / 14.0;

    final EdgeInsetsGeometry scaledPadding = useMaterial3
        ? ButtonStyleButton.scaledPadding(
            const EdgeInsetsDirectional.fromSTEB(16, 0, 24, 0),
            const EdgeInsetsDirectional.fromSTEB(8, 0, 12, 0),
            const EdgeInsetsDirectional.fromSTEB(4, 0, 6, 0),
            effectiveTextScale,
          )
        : ButtonStyleButton.scaledPadding(
            const EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
            const EdgeInsets.symmetric(horizontal: 8),
            const EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
            effectiveTextScale,
          );
    return buttonStyle.copyWith(
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(scaledPadding),
    );
  }
}

class _FilledButtonWithIconChild extends StatelessWidget {
  const _FilledButtonWithIconChild({
    required this.label,
    required this.icon,
    required this.buttonStyle,
  });

  final Widget label;
  final Widget icon;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    final double defaultFontSize =
        buttonStyle?.textStyle?.resolve(const <MaterialState>{})?.fontSize ??
            14.0;
    final double scale = clampDouble(
            MediaQuery.textScalerOf(context).scale(defaultFontSize) / 14.0,
            1.0,
            2.0) -
        1.0;
    // Adjust the gap based on the text scale factor. Start at 8, and lerp
    // to 4 based on how large the text is.
    final double gap = lerpDouble(8, 4, scale)!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[Expanded(child: label), SizedBox(width: gap), icon],
    );
  }
}
