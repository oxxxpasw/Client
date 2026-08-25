import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// On/Off switch field
class FormBuilderAdaptiveSwitch extends FormBuilderField<bool> {
  /// The primary content of the list tile.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget? subtitle;

  /// A widget to display on the opposite side of the tile from the switch.
  ///
  /// Typically an [Icon] widget.
  final Widget? secondary;

  /// The color to use when this switch is on.
  ///
  /// Defaults to [ColorScheme.secondary].
  final Color? activeColor;

  /// The color to use on the track when this switch is on.
  ///
  /// Defaults to [ColorScheme.secondary] with the opacity set at 50%.
  ///
  /// Ignored if this switch is created with [Switch.adaptive].
  final Color? activeTrackColor;

  /// The color to use on the thumb when this switch is off.
  ///
  /// Defaults to the colors described in the Material design specification.
  ///
  /// Ignored if this switch is created with [Switch.adaptive].
  final Color? inactiveThumbColor;

  /// The color to use on the track when this switch is off.
  ///
  /// Defaults to the colors described in the Material design specification.
  ///
  /// Ignored if this switch is created with [Switch.adaptive].
  final Color? inactiveTrackColor;

  /// An image to use on the thumb of this switch when the switch is on.
  ///
  /// Ignored if this switch is created with [Switch.adaptive].
  final ImageProvider? activeThumbImage;

  /// An image to use on the thumb of this switch when the switch is off.
  ///
  /// Ignored if this switch is created with [Switch.adaptive].
  final ImageProvider? inactiveThumbImage;

  /// The tile's internal padding.
  ///
  /// Insets a [SwitchListTile]'s contents: its [title], [subtitle],
  /// [secondary], and [Switch] widgets.
  ///
  /// If null, [ListTile]'s default of `EdgeInsets.symmetric(horizontal: 16.0)`
  /// is used.
  final EdgeInsets contentPadding;

  /// Where to place the control in widgets that use [ListTile] to position a
  /// control next to a label.
  ///
  /// See also:
  ///
  ///  * [CheckboxListTile], which combines a [ListTile] with a [Checkbox].
  ///  * [RadioListTile], which combines a [ListTile] with a [Radio] button.
  ///  * [SwitchListTile], which combines a [ListTile] with a [Switch].
  ///  * [ExpansionTile], which combines a [ListTile] with a button that expands
  ///    or collapses the tile to reveal or hide the children.
  final ListTileControlAffinity controlAffinity;

  /// Whether to render icons and text in the [activeColor].
  ///
  /// No effort is made to automatically coordinate the [selected] state and the
  /// [value] state. To have the list tile appear selected when the switch is
  /// on, pass the same value to both.
  ///
  /// Normally, this property is left to its default value, false.
  final bool selected;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.material.switch.onActiveThumbImageError}
  final ImageErrorListener? onActiveThumbImageError;

  /// {@macro flutter.material.switch.onInactiveThumbImageError}
  final ImageErrorListener? onInactiveThumbImageError;

  /// The color of this switch's thumb.
  ///
  /// Resolved in the following states:
  ///  * [MaterialState.selected].
  ///  * [MaterialState.hovered].
  ///  * [MaterialState.disabled].
  ///
  /// If null, then the value of [activeColor] is used in the selected state
  /// and [inactiveThumbColor] in the default state. If that is also null, then
  /// the value of [SwitchThemeData.thumbColor] is used. If that is also null,
  /// The default value is used.
  final MaterialStateProperty<Color?>? thumbColor;

  /// The color of this switch's track.
  ///
  /// Resolved in the following states:
  ///  * [MaterialState.selected].
  ///  * [MaterialState.hovered].
  ///  * [MaterialState.disabled].
  ///
  /// If null, then the value of [activeTrackColor] is used in the selected
  /// state and [inactiveTrackColor] in the default state. If that is also null,
  /// then the value of [SwitchThemeData.trackColor] is used. If that is also
  /// null, then the default value is used.
  final MaterialStateProperty<Color?>? trackColor;

  /// {@macro flutter.material.switch.trackOutlineColor}
  ///
  /// The [ListTile] will be focused when this [SwitchListTile] requests focus,
  /// so the focused outline color of the switch will be ignored.
  ///
  /// In Material 3, the outline color defaults to transparent in the selected
  /// state and [ColorScheme.outline] in the unselected state. In Material 2,
  /// the [Switch] track has no outline.
  final MaterialStateProperty<Color?>? trackOutlineColor;

  /// The icon to use on the thumb of this switch
  ///
  /// Resolved in the following states:
  ///  * [MaterialState.selected].
  ///  * [MaterialState.hovered].
  ///  * [MaterialState.disabled].
  ///
  /// If null, then the value of [SwitchThemeData.thumbIcon] is used. If this is
  /// also null, then the [Switch] does not have any icons on the thumb.
  final MaterialStateProperty<Icon?>? thumbIcon;

  /// {@macro flutter.material.switch.materialTapTargetSize}
  ///
  /// defaults to [MaterialTapTargetSize.shrinkWrap].
  final MaterialTapTargetSize? materialTapTargetSize;

  /// {@macro flutter.cupertino.CupertinoSwitch.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// The cursor for a mouse pointer when it enters or is hovering over the
  /// widget.
  ///
  /// If [mouseCursor] is a [MaterialStateProperty<MouseCursor>],
  /// [MaterialStateProperty.resolve] is used for the following [MaterialState]s:
  ///
  ///  * [MaterialState.selected].
  ///  * [MaterialState.hovered].
  ///  * [MaterialState.disabled].
  ///
  /// If null, then the value of [SwitchThemeData.mouseCursor] is used. If that
  /// is also null, then [MaterialStateMouseCursor.clickable] is used.
  final MouseCursor? mouseCursor;

  /// The color for the switch's [Material].
  ///
  /// Resolves in the following states:
  ///  * [MaterialState.pressed].
  ///  * [MaterialState.selected].
  ///  * [MaterialState.hovered].
  ///
  /// If null, then the value of [activeColor] with alpha [kRadialReactionAlpha]
  /// and [hoverColor] is used in the pressed and hovered state. If that is also
  /// null, the value of [SwitchThemeData.overlayColor] is used. If that is
  /// also null, then the default value is used in the pressed and hovered state.
  final MaterialStateProperty<Color?>? overlayColor;

  /// {@macro flutter.material.switch.splashRadius}
  ///
  /// If null, then the value of [SwitchThemeData.splashRadius] is used. If that
  /// is also null, then [kRadialReactionRadius] is used.
  final double? splashRadius;

  /// {@macro flutter.material.inkwell.onFocusChange}
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.material.ListTile.tileColor}
  final Color? tileColor;

  /// {@macro flutter.material.ListTile.shape}
  final ShapeBorder? shape;

  /// If non-null, defines the background color when [SwitchListTile.selected] is true.
  final Color? selectedTileColor;

  /// Defines how compact the list tile's layout will be.
  ///
  /// {@macro flutter.material.themedata.visualDensity}
  final VisualDensity? visualDensity;

  /// {@macro flutter.material.ListTile.enableFeedback}
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  final bool? enableFeedback;

  /// The color for the tile's [Material] when a pointer is hovering over it.
  final Color? hoverColor;

  /// {@macro flutter.cupertino.CupertinoSwitch.applyTheme}
  final bool? applyCupertinoTheme;

  /// Creates On/Off switch field
  FormBuilderAdaptiveSwitch({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    super.restorationId,
    required this.title,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.inactiveThumbImage,
    this.subtitle,
    this.secondary,
    this.controlAffinity = ListTileControlAffinity.trailing,
    this.contentPadding = EdgeInsets.zero,
    this.autofocus = false,
    this.selected = false,
    this.onActiveThumbImageError,
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
    this.onFocusChange,
    this.tileColor,
    this.shape,
    this.selectedTileColor,
    this.visualDensity,
    this.enableFeedback,
    this.hoverColor,
    this.applyCupertinoTheme,
  }) : super(
          builder: (FormFieldState<bool?> field) {
            final state = field as _FormBuilderSwitchState;
            return SwitchListTile.adaptive(
              contentPadding: contentPadding,
              title: title,
              value: state.value ?? false,
              onChanged: state.enabled
                  ? (value) {
                      field.didChange(value);
                    }
                  : null,
              activeColor: activeColor,
              activeThumbImage: activeThumbImage,
              activeTrackColor: activeTrackColor,
              inactiveThumbColor: inactiveThumbColor,
              inactiveThumbImage: activeThumbImage,
              inactiveTrackColor: inactiveTrackColor,
              secondary: secondary,
              subtitle: subtitle,
              autofocus: autofocus,
              selected: selected,
              controlAffinity: controlAffinity,
              onActiveThumbImageError: onActiveThumbImageError,
              onInactiveThumbImageError: onInactiveThumbImageError,
              thumbColor: thumbColor,
              trackColor: trackColor,
              trackOutlineColor: trackOutlineColor,
              thumbIcon: thumbIcon,
              materialTapTargetSize: materialTapTargetSize,
              dragStartBehavior: dragStartBehavior,
              mouseCursor: mouseCursor,
              overlayColor: overlayColor,
              splashRadius: splashRadius,
              onFocusChange: onFocusChange,
              tileColor: tileColor,
              shape: shape,
              selectedTileColor: selectedTileColor,
              visualDensity: visualDensity,
              enableFeedback: enableFeedback,
              hoverColor: hoverColor,
              applyCupertinoTheme: applyCupertinoTheme,
            );
          },
        );

  @override
  FormBuilderFieldState<FormBuilderAdaptiveSwitch, bool> createState() =>
      _FormBuilderSwitchState();
}

class _FormBuilderSwitchState
    extends FormBuilderFieldState<FormBuilderAdaptiveSwitch, bool> {}
