import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/custom_switch/custom_switch.dart';

class CustomSwitchListTile extends StatelessWidget {
  const CustomSwitchListTile({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.thumbColor,
    this.trackColor,
    this.trackOutlineColor,
    this.thumbIcon,
    this.materialTapTargetSize,
    this.dragStartBehavior = DragStartBehavior.start,
    this.mouseCursor,
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.onFocusChange,
    this.autofocus = false,
    this.tileColor,
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.secondary,
    this.selected = false,
    this.controlAffinity = ListTileControlAffinity.platform,
    this.shape,
    this.selectedTileColor,
    this.visualDensity,
    this.enableFeedback,
    this.hoverColor,
    this.titleAlignment,
  })  : applyCupertinoTheme = false,
        assert(activeThumbImage != null || onActiveThumbImageError == null),
        assert(inactiveThumbImage != null || onInactiveThumbImageError == null),
        assert(!isThreeLine || subtitle != null);
  final bool value;

  final ValueChanged<bool>? onChanged;

  final Color? activeColor;

  final Color? activeTrackColor;

  final Color? inactiveThumbColor;

  final Color? inactiveTrackColor;

  final ImageProvider? activeThumbImage;

  final ImageErrorListener? onActiveThumbImageError;

  final ImageProvider? inactiveThumbImage;

  final ImageErrorListener? onInactiveThumbImageError;

  final WidgetStateProperty<Color?>? thumbColor;

  final WidgetStateProperty<Color?>? trackColor;

  final WidgetStateProperty<Color?>? trackOutlineColor;

  final WidgetStateProperty<Icon?>? thumbIcon;

  final MaterialTapTargetSize? materialTapTargetSize;

  final DragStartBehavior dragStartBehavior;

  final MouseCursor? mouseCursor;

  final WidgetStateProperty<Color?>? overlayColor;

  final double? splashRadius;

  final FocusNode? focusNode;

  final ValueChanged<bool>? onFocusChange;

  final bool autofocus;

  final Color? tileColor;

  final Widget? title;

  final Widget? subtitle;

  final Widget? secondary;

  final bool isThreeLine;

  final bool? dense;

  final EdgeInsetsGeometry? contentPadding;

  final bool selected;

  final ListTileControlAffinity controlAffinity;

  final ShapeBorder? shape;

  final Color? selectedTileColor;

  final VisualDensity? visualDensity;

  final bool? enableFeedback;

  final Color? hoverColor;

  final bool? applyCupertinoTheme;

  final ListTileTitleAlignment? titleAlignment;

  @override
  Widget build(BuildContext context) {
    final control = ExcludeFocus(
      child: CustomSwitch(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        activeThumbImage: activeThumbImage,
        inactiveThumbImage: inactiveThumbImage,
        materialTapTargetSize:
            materialTapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
        activeTrackColor: activeTrackColor,
        inactiveTrackColor: inactiveTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        autofocus: autofocus,
        onFocusChange: onFocusChange,
        onActiveThumbImageError: onActiveThumbImageError,
        onInactiveThumbImageError: onInactiveThumbImageError,
        thumbColor: thumbColor,
        trackColor: trackColor,
        trackOutlineColor: trackOutlineColor,
        thumbIcon: thumbIcon,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        splashRadius: splashRadius,
        overlayColor: overlayColor,
      ),
    );

    Widget? leading, trailing;
    (leading, trailing) = switch (controlAffinity) {
      ListTileControlAffinity.leading => (control, secondary),
      ListTileControlAffinity.trailing || ListTileControlAffinity.platform => (
          secondary,
          control
        ),
    };

    final ThemeData theme = Theme.of(context);
    final SwitchThemeData switchTheme = SwitchTheme.of(context);
    final Set<WidgetState> states = <WidgetState>{
      if (selected) WidgetState.selected,
    };
    final Color effectiveActiveColor = activeColor ??
        switchTheme.thumbColor?.resolve(states) ??
        theme.colorScheme.secondary;
    return MergeSemantics(
      child: ListTile(
        titleAlignment: titleAlignment,
        selectedColor: effectiveActiveColor,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        isThreeLine: isThreeLine,
        dense: dense,
        contentPadding: contentPadding,
        enabled: onChanged != null,
        onTap: onChanged != null
            ? () {
                onChanged!(!value);
              }
            : null,
        selected: selected,
        selectedTileColor: selectedTileColor,
        autofocus: autofocus,
        shape: shape,
        tileColor: tileColor,
        visualDensity: visualDensity,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        enableFeedback: enableFeedback,
        hoverColor: hoverColor,
      ),
    );
  }
}
