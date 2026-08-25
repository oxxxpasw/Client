import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class CustomLeadingButton extends StatelessWidget {
  const CustomLeadingButton({
    super.key,
    this.color,
    this.backgroundColor,
    this.showIfParentCanPop,
    this.showIfChildCanPop = true,
    this.ignorePagelessRoutes = false,
    this.builder,
  });

  final Color? color;
  final Color? backgroundColor;

  final bool showIfChildCanPop, ignorePagelessRoutes;
  final bool? showIfParentCanPop;
  final AutoLeadingButtonBuilder? builder;

  @override
  Widget build(BuildContext context) {
    return AutoLeadingButton(
      showIfParentCanPop: showIfParentCanPop,
      showIfChildCanPop: showIfChildCanPop,
      ignorePagelessRoutes: ignorePagelessRoutes,
      builder: builder ?? _defaultBuilder,
    );
  }

  Widget _defaultBuilder(
    BuildContext context,
    LeadingType leadingType,
    VoidCallback? action,
  ) {
    if (leadingType == LeadingType.noLeading) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final ibTheme = IconButtonTheme.of(context);
    final iTheme = IconTheme.of(context);

    var iconColor = color ??
        ibTheme.style?.foregroundColor?.resolve({}) ??
        theme.colorScheme.primary;

    var backgroundColor = this.backgroundColor ??
        ibTheme.style?.backgroundColor?.resolve({}) ??
        theme.colorScheme.surfaceContainer;

    iconColor = iconColor.withOpacity(iTheme.opacity ?? 1.0);
    backgroundColor = backgroundColor.withOpacity(iTheme.opacity ?? 1.0);

    return IconButtonTheme(
      data: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: iconColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding12,
            vertical: AppInsets.padding4,
          ),
        ),
      ),
      child: Center(
        child: Builder(
          builder: (context) => switch (leadingType) {
            LeadingType.back => CustomBackButton(onPressed: action),
            LeadingType.close => CustomCloseButton(onPressed: action),
            LeadingType.drawer => CustomDrawerButton(onPressed: action),
            LeadingType.noLeading => const SizedBox.shrink(),
          },
        ),
      ),
    );
  }
}

abstract class _ActionButton extends StatelessWidget {
  const _ActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.style,
  });

  final Widget icon;

  final VoidCallback? onPressed;

  final ButtonStyle? style;

  String _getTooltip(BuildContext context);

  void _onPressedCallback(BuildContext context);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: icon,
      style: style,
      constraints: const BoxConstraints(),
      tooltip: _getTooltip(context),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          _onPressedCallback(context);
        }
      },
    );
  }
}

class CustomBackButton extends _ActionButton {
  const CustomBackButton({
    super.key,
    super.style,
    super.onPressed,
  }) : super(icon: const BackButtonIcon());

  @override
  void _onPressedCallback(BuildContext context) => Navigator.maybePop(context);

  @override
  String _getTooltip(BuildContext context) {
    return MaterialLocalizations.of(context).backButtonTooltip;
  }
}

class CustomCloseButton extends _ActionButton {
  const CustomCloseButton({
    super.key,
    super.onPressed,
    super.style,
  }) : super(icon: const CloseButtonIcon());

  @override
  void _onPressedCallback(BuildContext context) => Navigator.maybePop(context);

  @override
  String _getTooltip(BuildContext context) {
    return MaterialLocalizations.of(context).closeButtonTooltip;
  }
}

class CustomDrawerButton extends _ActionButton {
  const CustomDrawerButton({
    super.key,
    super.style,
    super.onPressed,
  }) : super(icon: const DrawerButtonIcon());

  @override
  void _onPressedCallback(BuildContext context) =>
      Scaffold.of(context).openDrawer();

  @override
  String _getTooltip(BuildContext context) {
    return MaterialLocalizations.of(context).openAppDrawerTooltip;
  }
}

// class CustomIconButton extends StatelessWidget {
//   const CustomIconButton({
//     super.key,
//     this.iconSize,
//     this.visualDensity,
//     this.padding,
//     this.alignment,
//     this.splashRadius,
//     this.color,
//     this.focusColor,
//     this.hoverColor,
//     this.highlightColor,
//     this.splashColor,
//     this.disabledColor,
//     required this.onPressed,
//     this.mouseCursor,
//     this.focusNode,
//     this.autofocus = false,
//     this.tooltip,
//     this.enableFeedback,
//     this.constraints,
//     this.style,
//     this.isSelected,
//     this.selectedIcon,
//     required this.icon,
//   }) : assert(splashRadius == null || splashRadius > 0);
//
//   final double? iconSize;
//
//   final VisualDensity? visualDensity;
//
//   final EdgeInsetsGeometry? padding;
//
//   final AlignmentGeometry? alignment;
//
//   final double? splashRadius;
//
//   final Widget icon;
//
//   final Color? focusColor;
//
//   final Color? hoverColor;
//
//   final Color? color;
//
//   final Color? splashColor;
//
//   final Color? highlightColor;
//
//   final Color? disabledColor;
//
//   final VoidCallback? onPressed;
//
//   final MouseCursor? mouseCursor;
//
//   final FocusNode? focusNode;
//
//   final bool autofocus;
//
//   final String? tooltip;
//
//   final bool? enableFeedback;
//
//   final BoxConstraints? constraints;
//
//   final ButtonStyle? style;
//
//   final bool? isSelected;
//
//   final Widget? selectedIcon;
//
//   static ButtonStyle styleFrom({
//     Color? foregroundColor,
//     Color? backgroundColor,
//     Color? disabledForegroundColor,
//     Color? disabledBackgroundColor,
//     Color? focusColor,
//     Color? hoverColor,
//     Color? highlightColor,
//     Color? shadowColor,
//     Color? surfaceTintColor,
//     Color? overlayColor,
//     double? elevation,
//     Size? minimumSize,
//     Size? fixedSize,
//     Size? maximumSize,
//     double? iconSize,
//     BorderSide? side,
//     OutlinedBorder? shape,
//     EdgeInsetsGeometry? padding,
//     MouseCursor? enabledMouseCursor,
//     MouseCursor? disabledMouseCursor,
//     VisualDensity? visualDensity,
//     MaterialTapTargetSize? tapTargetSize,
//     Duration? animationDuration,
//     bool? enableFeedback,
//     AlignmentGeometry? alignment,
//     InteractiveInkFeatureFactory? splashFactory,
//   }) =>
//       IconButton.styleFrom(
//         foregroundColor: foregroundColor,
//         backgroundColor: backgroundColor,
//         disabledForegroundColor: disabledForegroundColor,
//         disabledBackgroundColor: disabledBackgroundColor,
//         focusColor: focusColor,
//         hoverColor: hoverColor,
//         highlightColor: highlightColor,
//         shadowColor: shadowColor,
//         surfaceTintColor: surfaceTintColor,
//         overlayColor: overlayColor,
//         elevation: elevation,
//         minimumSize: minimumSize,
//         fixedSize: fixedSize,
//         maximumSize: maximumSize,
//         iconSize: iconSize,
//         side: side,
//         shape: shape,
//         padding: padding,
//         enabledMouseCursor: enabledMouseCursor,
//         disabledMouseCursor: disabledMouseCursor,
//         visualDensity: visualDensity,
//         tapTargetSize: tapTargetSize,
//         animationDuration: animationDuration,
//         enableFeedback: enableFeedback,
//         alignment: alignment,
//         splashFactory: splashFactory,
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     final Size? minSize = constraints == null
//         ? null
//         : Size(constraints!.minWidth, constraints!.minHeight);
//     final Size? maxSize = constraints == null
//         ? null
//         : Size(constraints!.maxWidth, constraints!.maxHeight);
//
//     ButtonStyle adjustedStyle = styleFrom(
//       visualDensity: visualDensity,
//       foregroundColor: color,
//       disabledForegroundColor: disabledColor,
//       focusColor: focusColor,
//       hoverColor: hoverColor,
//       highlightColor: highlightColor,
//       padding: padding,
//       minimumSize: minSize,
//       maximumSize: maxSize,
//       iconSize: iconSize,
//       alignment: alignment,
//       enabledMouseCursor: mouseCursor,
//       disabledMouseCursor: mouseCursor,
//       enableFeedback: enableFeedback,
//     );
//     if (style != null) {
//       adjustedStyle = style!.merge(adjustedStyle);
//     }
//
//     Widget effectiveIcon = icon;
//     if ((isSelected ?? false) && selectedIcon != null) {
//       effectiveIcon = selectedIcon!;
//     }
//
//     Widget iconButton = effectiveIcon;
//     if (tooltip != null) {
//       iconButton = Tooltip(
//         message: tooltip,
//         child: effectiveIcon,
//       );
//     }
//
//     return _SelectableIconButton(
//       style: adjustedStyle,
//       onPressed: onPressed,
//       autofocus: autofocus,
//       focusNode: focusNode,
//       isSelected: isSelected,
//       child: iconButton,
//     );
//   }
//
//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(
//         StringProperty('tooltip', tooltip, defaultValue: null, quoted: false));
//     properties.add(ObjectFlagProperty<VoidCallback>('onPressed', onPressed,
//         ifNull: 'disabled'));
//     properties.add(ColorProperty('color', color, defaultValue: null));
//     properties
//         .add(ColorProperty('disabledColor', disabledColor, defaultValue: null));
//     properties.add(ColorProperty('focusColor', focusColor, defaultValue: null));
//     properties.add(ColorProperty('hoverColor', hoverColor, defaultValue: null));
//     properties.add(
//         ColorProperty('highlightColor', highlightColor, defaultValue: null));
//     properties
//         .add(ColorProperty('splashColor', splashColor, defaultValue: null));
//     properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding,
//         defaultValue: null));
//     properties.add(DiagnosticsProperty<FocusNode>('focusNode', focusNode,
//         defaultValue: null));
//   }
// }
//
// class _SelectableIconButton extends StatefulWidget {
//   const _SelectableIconButton({
//     this.isSelected,
//     this.style,
//     this.focusNode,
//     required this.autofocus,
//     required this.onPressed,
//     required this.child,
//   });
//
//   final bool? isSelected;
//   final ButtonStyle? style;
//   final FocusNode? focusNode;
//   final bool autofocus;
//   final VoidCallback? onPressed;
//   final Widget child;
//
//   @override
//   State<_SelectableIconButton> createState() => _SelectableIconButtonState();
// }
//
// class _SelectableIconButtonState extends State<_SelectableIconButton> {
//   late final WidgetStatesController statesController;
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.isSelected == null) {
//       statesController = WidgetStatesController();
//     } else {
//       statesController = WidgetStatesController(
//           <WidgetState>{if (widget.isSelected!) WidgetState.selected});
//     }
//   }
//
//   @override
//   void didUpdateWidget(_SelectableIconButton oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.isSelected == null) {
//       if (statesController.value.contains(WidgetState.selected)) {
//         statesController.update(WidgetState.selected, false);
//       }
//       return;
//     }
//     if (widget.isSelected != oldWidget.isSelected) {
//       statesController.update(WidgetState.selected, widget.isSelected!);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final bool toggleable = widget.isSelected != null;
//
//     return _IconButtonM3(
//       statesController: statesController,
//       style: widget.style,
//       autofocus: widget.autofocus,
//       focusNode: widget.focusNode,
//       onPressed: widget.onPressed,
//       toggleable: toggleable,
//       child: Semantics(
//         selected: widget.isSelected,
//         child: widget.child,
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     statesController.dispose();
//     super.dispose();
//   }
// }
//
// class _IconButtonM3 extends ButtonStyleButton {
//   const _IconButtonM3({
//     required super.onPressed,
//     super.style,
//     super.focusNode,
//     super.autofocus = false,
//     super.statesController,
//     required this.toggleable,
//     required Widget super.child,
//   }) : super(
//             onLongPress: null,
//             onHover: null,
//             onFocusChange: null,
//             clipBehavior: Clip.none);
//
//   final bool toggleable;
//
//   @override
//   ButtonStyle defaultStyleOf(BuildContext context) =>
//       _FilledIconButtonDefaultsM3(context, toggleable);
//
//   @override
//   ButtonStyle? themeStyleOf(BuildContext context) {
//     final IconThemeData iconTheme = IconTheme.of(context);
//     final bool isDefaultSize =
//         iconTheme.size == const IconThemeData.fallback().size;
//     final bool isDefaultColor = identical(
//       iconTheme.color,
//       switch (Theme.of(context).brightness) {
//         Brightness.light => kDefaultIconDarkColor,
//         Brightness.dark => kDefaultIconLightColor,
//       },
//     );
//
//     final ButtonStyle iconThemeStyle = IconButton.styleFrom(
//         foregroundColor: isDefaultColor ? null : iconTheme.color,
//         iconSize: isDefaultSize ? null : iconTheme.size);
//
//     return IconButtonTheme.of(context).style?.merge(iconThemeStyle) ??
//         iconThemeStyle;
//   }
// }
//
// class _FilledIconButtonDefaultsM3 extends ButtonStyle {
//   _FilledIconButtonDefaultsM3(this.context, this.toggleable)
//       : super(
//           animationDuration: kThemeChangeDuration,
//           enableFeedback: true,
//           alignment: Alignment.center,
//         );
//
//   final BuildContext context;
//   final bool toggleable;
//   late final ColorScheme _colors = Theme.of(context).colorScheme;
//
//   // No default text style
//
//   @override
//   WidgetStateProperty<Color?>? get backgroundColor =>
//       WidgetStateProperty.resolveWith((Set<WidgetState> states) {
//         if (states.contains(WidgetState.disabled)) {
//           return _colors.onSurface.withOpacity(0.12);
//         }
//         if (states.contains(WidgetState.selected)) {
//           return _colors.primary;
//         }
//         if (toggleable) {
//           // toggleable but unselected case
//           return _colors.surfaceContainerHighest;
//         }
//         return _colors.primary;
//       });
//
//   @override
//   WidgetStateProperty<Color?>? get foregroundColor =>
//       WidgetStateProperty.resolveWith((Set<WidgetState> states) {
//         if (states.contains(WidgetState.disabled)) {
//           return _colors.onSurface.withOpacity(0.38);
//         }
//         if (states.contains(WidgetState.selected)) {
//           return _colors.onPrimary;
//         }
//         if (toggleable) {
//           // toggleable but unselected case
//           return _colors.primary;
//         }
//         return _colors.onPrimary;
//       });
//
//   @override
//   WidgetStateProperty<Color?>? get overlayColor =>
//       WidgetStateProperty.resolveWith((Set<WidgetState> states) {
//         if (states.contains(WidgetState.selected)) {
//           if (states.contains(WidgetState.pressed)) {
//             return _colors.onPrimary.withOpacity(0.1);
//           }
//           if (states.contains(WidgetState.hovered)) {
//             return _colors.onPrimary.withOpacity(0.08);
//           }
//           if (states.contains(WidgetState.focused)) {
//             return _colors.onPrimary.withOpacity(0.1);
//           }
//         }
//         if (toggleable) {
//           // toggleable but unselected case
//           if (states.contains(WidgetState.pressed)) {
//             return _colors.primary.withOpacity(0.1);
//           }
//           if (states.contains(WidgetState.hovered)) {
//             return _colors.primary.withOpacity(0.08);
//           }
//           if (states.contains(WidgetState.focused)) {
//             return _colors.primary.withOpacity(0.1);
//           }
//         }
//         if (states.contains(WidgetState.pressed)) {
//           return _colors.onPrimary.withOpacity(0.1);
//         }
//         if (states.contains(WidgetState.hovered)) {
//           return _colors.onPrimary.withOpacity(0.08);
//         }
//         if (states.contains(WidgetState.focused)) {
//           return _colors.onPrimary.withOpacity(0.1);
//         }
//         return Colors.transparent;
//       });
//
//   @override
//   WidgetStateProperty<double>? get elevation =>
//       const WidgetStatePropertyAll<double>(0.0);
//
//   @override
//   WidgetStateProperty<Color>? get shadowColor =>
//       const WidgetStatePropertyAll<Color>(Colors.transparent);
//
//   @override
//   WidgetStateProperty<Color>? get surfaceTintColor =>
//       const WidgetStatePropertyAll<Color>(Colors.transparent);
//
//   @override
//   WidgetStateProperty<EdgeInsetsGeometry>? get padding =>
//       const WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(8.0));
//
//   @override
//   WidgetStateProperty<Size>? get minimumSize =>
//       const WidgetStatePropertyAll<Size>(Size(40.0, 40.0));
//
//   // No default fixedSize
//
//   @override
//   WidgetStateProperty<Size>? get maximumSize =>
//       const WidgetStatePropertyAll<Size>(Size.infinite);
//
//   @override
//   WidgetStateProperty<double>? get iconSize =>
//       const WidgetStatePropertyAll<double>(24.0);
//
//   @override
//   WidgetStateProperty<BorderSide?>? get side => null;
//
//   @override
//   WidgetStateProperty<OutlinedBorder>? get shape =>
//       const WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder());
//
//   @override
//   WidgetStateProperty<MouseCursor?>? get mouseCursor =>
//       WidgetStateProperty.resolveWith((Set<WidgetState> states) {
//         if (states.contains(WidgetState.disabled)) {
//           return SystemMouseCursors.basic;
//         }
//         return SystemMouseCursors.click;
//       });
//
//   @override
//   VisualDensity? get visualDensity => VisualDensity.standard;
//
//   @override
//   MaterialTapTargetSize? get tapTargetSize =>
//       Theme.of(context).materialTapTargetSize;
//
//   @override
//   InteractiveInkFeatureFactory? get splashFactory =>
//       Theme.of(context).splashFactory;
// }
