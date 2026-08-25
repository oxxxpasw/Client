import 'package:flutter/material.dart';

class FakeSearchBar extends StatelessWidget {
  const FakeSearchBar({
    super.key,
    this.hintText,
    this.leading,
    this.trailing,
    this.onTap,
    this.onTapOutside,
    this.onChanged,
    this.onSubmitted,
    this.constraints,
    this.elevation,
    this.backgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.overlayColor,
    this.side,
    this.shape,
    this.padding,
    this.hintStyle,
  });

  final String? hintText;

  final Widget? leading;

  final Iterable<Widget>? trailing;

  final GestureTapCallback? onTap;

  final TapRegionCallback? onTapOutside;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  final BoxConstraints? constraints;

  final WidgetStateProperty<double?>? elevation;

  final WidgetStateProperty<Color?>? backgroundColor;

  final WidgetStateProperty<Color?>? shadowColor;

  final WidgetStateProperty<Color?>? surfaceTintColor;

  final WidgetStateProperty<Color?>? overlayColor;

  final WidgetStateProperty<BorderSide?>? side;

  final WidgetStateProperty<OutlinedBorder?>? shape;

  final WidgetStateProperty<EdgeInsetsGeometry?>? padding;

  final WidgetStateProperty<TextStyle?>? hintStyle;

  @override
  Widget build(BuildContext context) {
    final TextDirection textDirection = Directionality.of(context);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final SearchBarThemeData searchBarTheme = SearchBarTheme.of(context);
    final SearchBarThemeData defaults = _SearchBarDefaultsM3(context);

    T? resolve<T>(
      WidgetStateProperty<T>? widgetValue,
      WidgetStateProperty<T>? themeValue,
      WidgetStateProperty<T>? defaultValue,
    ) {
      final Set<WidgetState> states = {};
      return widgetValue?.resolve(states) ??
          themeValue?.resolve(states) ??
          defaultValue?.resolve(states);
    }

    final double? effectiveElevation = resolve<double?>(
        elevation, searchBarTheme.elevation, defaults.elevation);
    final Color? effectiveShadowColor = resolve<Color?>(
        shadowColor, searchBarTheme.shadowColor, defaults.shadowColor);
    final Color? effectiveBackgroundColor = resolve<Color?>(backgroundColor,
        searchBarTheme.backgroundColor, defaults.backgroundColor);
    final Color? effectiveSurfaceTintColor = resolve<Color?>(surfaceTintColor,
        searchBarTheme.surfaceTintColor, defaults.surfaceTintColor);
    final OutlinedBorder? effectiveShape =
        resolve<OutlinedBorder?>(shape, searchBarTheme.shape, defaults.shape);
    final BorderSide? effectiveSide =
        resolve<BorderSide?>(side, searchBarTheme.side, defaults.side);
    final EdgeInsetsGeometry? effectivePadding = resolve<EdgeInsetsGeometry?>(
        padding, searchBarTheme.padding, defaults.padding);
    final WidgetStateProperty<Color?>? effectiveOverlayColor =
        overlayColor ?? searchBarTheme.overlayColor ?? defaults.overlayColor;

    final Set<WidgetState> states = {};
    final TextStyle? effectiveHintStyle = hintStyle?.resolve(states) ??
        searchBarTheme.hintStyle?.resolve(states) ??
        searchBarTheme.textStyle?.resolve(states) ??
        defaults.hintStyle?.resolve(states);

    final Color defaultColor = switch (colorScheme.brightness) {
      Brightness.light => kDefaultIconDarkColor,
      Brightness.dark => kDefaultIconLightColor,
    };

    final IconThemeData? customTheme = switch (IconTheme.of(context)) {
      final IconThemeData iconTheme when iconTheme.color != defaultColor =>
        iconTheme,
      _ => null,
    };

    Widget? leading;
    if (this.leading != null) {
      leading = IconTheme.merge(
        data: customTheme ?? IconThemeData(color: colorScheme.onSurface),
        child: this.leading!,
      );
    }

    final List<Widget>? trailing = this
        .trailing
        ?.map((Widget trailing) => IconTheme.merge(
              data: customTheme ??
                  IconThemeData(color: colorScheme.onSurfaceVariant),
              child: trailing,
            ))
        .toList();

    return ConstrainedBox(
      constraints:
          constraints ?? searchBarTheme.constraints ?? defaults.constraints!,
      child: Material(
        elevation: effectiveElevation!,
        shadowColor: effectiveShadowColor,
        color: effectiveBackgroundColor,
        surfaceTintColor: effectiveSurfaceTintColor,
        shape: effectiveShape?.copyWith(side: effectiveSide),
        child: GestureDetector(
          onTap: () {
            onTap?.call();
          },
          child: Padding(
            padding: effectivePadding!,
            child: Row(
              textDirection: textDirection,
              children: <Widget>[
                if (leading != null) leading,
                Expanded(
                  child: Padding(
                    padding: effectivePadding,
                    child: InputDecorator(
                      isEmpty: true,
                      decoration: InputDecoration(
                        hintText: hintText,
                      ).applyDefaults(
                        InputDecorationTheme(
                          hintStyle: effectiveHintStyle,
                          // The configuration below is to make sure that the text field
                          // in `SearchBar` will not be overridden by the overall `InputDecorationTheme`
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          // Setting `isDense` to true to allow the text field height to be
                          // smaller than 48.0
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ),
                ...?trailing,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchBarDefaultsM3 extends SearchBarThemeData {
  _SearchBarDefaultsM3(this.context);

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;
  late final TextTheme _textTheme = Theme.of(context).textTheme;

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      WidgetStatePropertyAll<Color>(_colors.surfaceContainerHigh);

  @override
  WidgetStateProperty<double>? get elevation =>
      const WidgetStatePropertyAll<double>(6.0);

  @override
  WidgetStateProperty<Color>? get shadowColor =>
      WidgetStatePropertyAll<Color>(_colors.shadow);

  @override
  WidgetStateProperty<Color>? get surfaceTintColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get overlayColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) {
          return _colors.onSurface.withOpacity(0.1);
        }
        if (states.contains(WidgetState.hovered)) {
          return _colors.onSurface.withOpacity(0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return Colors.transparent;
        }
        return Colors.transparent;
      });

  // No default side

  @override
  WidgetStateProperty<OutlinedBorder>? get shape =>
      const WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder());

  @override
  WidgetStateProperty<EdgeInsetsGeometry>? get padding =>
      const WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 8.0));

  @override
  WidgetStateProperty<TextStyle?> get textStyle =>
      WidgetStatePropertyAll<TextStyle?>(
          _textTheme.bodyLarge?.copyWith(color: _colors.onSurface));

  @override
  WidgetStateProperty<TextStyle?> get hintStyle =>
      WidgetStatePropertyAll<TextStyle?>(
          _textTheme.bodyLarge?.copyWith(color: _colors.onSurfaceVariant));

  @override
  BoxConstraints get constraints =>
      const BoxConstraints(minWidth: 360.0, maxWidth: 800.0, minHeight: 56.0);

  @override
  TextCapitalization get textCapitalization => TextCapitalization.none;
}
