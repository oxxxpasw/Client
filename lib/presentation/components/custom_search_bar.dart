import 'package:flutter/material.dart';

const double _kDisableSearchBarOpacity = 0.38;

class CustomSearchBar extends StatefulWidget {
  /// Creates a Material Design search bar.
  const CustomSearchBar({
    super.key,
    this.controller,
    this.focusNode,
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
    this.textStyle,
    this.hintStyle,
    this.textCapitalization,
    this.enabled = true,
    this.restorationId,
    this.autoFocus = false,
    this.textInputAction,
    this.keyboardType,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.readOnly = false,
  });

  /// Controls the text being edited in the search bar's text field.
  ///
  /// If null, this widget will create its own [TextEditingController].
  final TextEditingController? controller;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// Text that suggests what sort of input the field accepts.
  ///
  /// Displayed at the same location on the screen where text may be entered
  /// when the input is empty.
  ///
  /// Defaults to null.
  final String? hintText;

  /// A widget to display before the text input field.
  ///
  /// Typically the [leading] widget is an [Icon] or an [IconButton].
  final Widget? leading;

  /// A list of Widgets to display in a row after the text field.
  ///
  /// Typically these actions can represent additional modes of searching
  /// (like voice search), an avatar, a separate high-level action (such as
  /// current location) or an overflow menu. There should not be more than
  /// two trailing actions.
  final Iterable<Widget>? trailing;

  /// Called when the user taps this search bar.
  final GestureTapCallback? onTap;

  /// Called when the user taps outside the search bar.
  final TapRegionCallback? onTapOutside;

  /// Invoked upon user input.
  final ValueChanged<String>? onChanged;

  /// Called when the user indicates that they are done editing the text in the
  /// field.
  final ValueChanged<String>? onSubmitted;

  /// Optional size constraints for the search bar.
  ///
  /// If null, the value of [SearchBarThemeData.constraints] will be used. If
  /// this is also null, then the constraints defaults to:
  /// ```dart
  /// const BoxConstraints(minWidth: 360.0, maxWidth: 800.0, minHeight: 56.0)
  /// ```
  final BoxConstraints? constraints;

  /// The elevation of the search bar's [Material].
  ///
  /// If null, the value of [SearchBarThemeData.elevation] will be used. If this
  /// is also null, then default value is 6.0.
  final MaterialStateProperty<double?>? elevation;

  /// The search bar's background fill color.
  ///
  /// If null, the value of [SearchBarThemeData.backgroundColor] will be used.
  /// If this is also null, then the default value is [ColorScheme.surfaceContainerHigh].
  final MaterialStateProperty<Color?>? backgroundColor;

  /// The shadow color of the search bar's [Material].
  ///
  /// If null, the value of [SearchBarThemeData.shadowColor] will be used.
  /// If this is also null, then the default value is [ColorScheme.shadow].
  final MaterialStateProperty<Color?>? shadowColor;

  /// The surface tint color of the search bar's [Material].
  ///
  /// This is not recommended for use. [Material 3 spec](https://m3.material.io/styles/color/the-color-system/color-roles)
  /// introduced a set of tone-based surfaces and surface containers in its [ColorScheme],
  /// which provide more flexibility. The intention is to eventually remove surface tint color from
  /// the framework.
  ///
  /// If null, the value of [SearchBarThemeData.surfaceTintColor] will be used.
  /// If this is also null, then the default value is [Colors.transparent].
  final MaterialStateProperty<Color?>? surfaceTintColor;

  /// The highlight color that's typically used to indicate that
  /// the search bar is focused, hovered, or pressed.
  final MaterialStateProperty<Color?>? overlayColor;

  /// The color and weight of the search bar's outline.
  ///
  /// This value is combined with [shape] to create a shape decorated
  /// with an outline.
  ///
  /// If null, the value of [SearchBarThemeData.side] will be used. If this is
  /// also null, the search bar doesn't have a side by default.
  final MaterialStateProperty<BorderSide?>? side;

  /// The shape of the search bar's underlying [Material].
  ///
  /// This shape is combined with [side] to create a shape decorated
  /// with an outline.
  ///
  /// If null, the value of [SearchBarThemeData.shape] will be used.
  /// If this is also null, defaults to [StadiumBorder].
  final MaterialStateProperty<OutlinedBorder?>? shape;

  /// The padding between the search bar's boundary and its contents.
  ///
  /// If null, the value of [SearchBarThemeData.padding] will be used.
  /// If this is also null, then the default value is 16.0 horizontally.
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;

  /// The style to use for the text being edited.
  ///
  /// If null, defaults to the `bodyLarge` text style from the current [Theme].
  /// The default text color is [ColorScheme.onSurface].
  final MaterialStateProperty<TextStyle?>? textStyle;

  /// The style to use for the [hintText].
  ///
  /// If null, the value of [SearchBarThemeData.hintStyle] will be used. If this
  /// is also null, the value of [textStyle] will be used. If this is also null,
  /// defaults to the `bodyLarge` text style from the current [Theme].
  /// The default text color is [ColorScheme.onSurfaceVariant].
  final MaterialStateProperty<TextStyle?>? hintStyle;

  /// {@macro flutter.widgets.editableText.textCapitalization}
  final TextCapitalization? textCapitalization;

  /// Whether or not this widget is currently interactive.
  ///
  /// When false, the widget will ignore taps and appear dimmed.
  ///
  /// Defaults to true.
  final bool enabled;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autoFocus;

  /// {@macro flutter.widgets.TextField.textInputAction}
  final TextInputAction? textInputAction;

  /// The type of action button to use for the keyboard.
  ///
  /// Defaults to the default value specified in [TextField].
  final TextInputType? keyboardType;

  /// {@macro flutter.widgets.editableText.scrollPadding}
  final EdgeInsets scrollPadding;

  /// {@macro flutter.widgets.editableText.readOnly}
  final bool readOnly;

  final String? restorationId;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar>
    with RestorationMixin {
  late final MaterialStatesController _internalStatesController;
  RestorableTextEditingController? _controller;

  TextEditingController get _effectiveController =>
      widget.controller ?? _controller!.value;

  FocusNode? _internalFocusNode;
  FocusNode get _focusNode =>
      widget.focusNode ?? (_internalFocusNode ??= FocusNode());

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _createLocalController();
    }
    _internalStatesController = MaterialStatesController();
    _internalStatesController.addListener(() {
      setState(() {});
    });
  }

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    if (_controller != null) {
      _registerController();
    }
  }

  void _registerController() {
    assert(_controller != null);
    registerForRestoration(_controller!, 'controller');
  }

  void _createLocalController([TextEditingValue? value]) {
    assert(_controller == null);
    _controller = value == null
        ? RestorableTextEditingController()
        : RestorableTextEditingController.fromValue(value);
    if (!restorePending) {
      _registerController();
    }
  }

  @override
  void didUpdateWidget(CustomSearchBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller == null && oldWidget.controller != null) {
      _createLocalController(oldWidget.controller!.value);
    } else if (widget.controller != null && oldWidget.controller == null) {
      unregisterFromRestoration(_controller!);
      _controller!.dispose();
      _controller = null;
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    _internalStatesController.dispose();
    _internalFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextDirection textDirection = Directionality.of(context);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final SearchBarThemeData searchBarTheme = SearchBarTheme.of(context);
    final SearchBarThemeData defaults = _SearchBarDefaultsM3(context);

    T? resolve<T>(
      MaterialStateProperty<T>? widgetValue,
      MaterialStateProperty<T>? themeValue,
      MaterialStateProperty<T>? defaultValue,
    ) {
      final Set<MaterialState> states = _internalStatesController.value;
      return widgetValue?.resolve(states) ??
          themeValue?.resolve(states) ??
          defaultValue?.resolve(states);
    }

    final TextStyle? effectiveTextStyle = resolve<TextStyle?>(
      widget.textStyle,
      searchBarTheme.textStyle,
      defaults.textStyle,
    );
    final double? effectiveElevation = resolve<double?>(
      widget.elevation,
      searchBarTheme.elevation,
      defaults.elevation,
    );
    final Color? effectiveShadowColor = resolve<Color?>(
      widget.shadowColor,
      searchBarTheme.shadowColor,
      defaults.shadowColor,
    );
    final Color? effectiveBackgroundColor = resolve<Color?>(
      widget.backgroundColor,
      searchBarTheme.backgroundColor,
      defaults.backgroundColor,
    );
    final Color? effectiveSurfaceTintColor = resolve<Color?>(
      widget.surfaceTintColor,
      searchBarTheme.surfaceTintColor,
      defaults.surfaceTintColor,
    );
    final OutlinedBorder? effectiveShape = resolve<OutlinedBorder?>(
      widget.shape,
      searchBarTheme.shape,
      defaults.shape,
    );
    final BorderSide? effectiveSide = resolve<BorderSide?>(
      widget.side,
      searchBarTheme.side,
      defaults.side,
    );
    final EdgeInsetsGeometry? effectivePadding = resolve<EdgeInsetsGeometry?>(
      widget.padding,
      searchBarTheme.padding,
      defaults.padding,
    );
    final MaterialStateProperty<Color?>? effectiveOverlayColor =
        widget.overlayColor ??
            searchBarTheme.overlayColor ??
            defaults.overlayColor;

    final Set<MaterialState> states = _internalStatesController.value;
    final TextStyle? effectiveHintStyle = widget.hintStyle?.resolve(states) ??
        searchBarTheme.hintStyle?.resolve(states) ??
        widget.textStyle?.resolve(states) ??
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
    if (widget.leading != null) {
      leading = IconTheme.merge(
        data: customTheme ?? IconThemeData(color: colorScheme.onSurface),
        child: widget.leading!,
      );
    }

    final List<Widget> trailing = [
      _ClearButton(
        controller: _effectiveController,
        onPressed: () {
          _effectiveController.clear();
          _focusNode.unfocus();
          widget.onChanged?.call('');
        },
      ),
      ...?widget.trailing,
    ]
        .map(
          (Widget trailing) => IconTheme.merge(
            data: customTheme ??
                IconThemeData(color: colorScheme.onSurfaceVariant),
            child: trailing,
          ),
        )
        .toList();

    return ConstrainedBox(
      constraints: widget.constraints ??
          searchBarTheme.constraints ??
          defaults.constraints!,
      child: Opacity(
        opacity: widget.enabled ? 1 : _kDisableSearchBarOpacity,
        child: Material(
          elevation: effectiveElevation!,
          shadowColor: effectiveShadowColor,
          color: effectiveBackgroundColor,
          surfaceTintColor: effectiveSurfaceTintColor,
          shape: effectiveShape?.copyWith(side: effectiveSide),
          child: IgnorePointer(
            ignoring: !widget.enabled,
            child: InkWell(
              onTap: () {
                widget.onTap?.call();
                if (!_focusNode.hasFocus) {
                  _focusNode.requestFocus();
                }
              },
              overlayColor: effectiveOverlayColor,
              customBorder: effectiveShape?.copyWith(side: effectiveSide),
              statesController: _internalStatesController,
              child: Padding(
                padding: effectivePadding!,
                child: Row(
                  textDirection: textDirection,
                  children: <Widget>[
                    if (leading != null) leading,
                    Expanded(
                      child: Padding(
                        padding: effectivePadding,
                        child: TextField(
                          readOnly: widget.readOnly,
                          autofocus: widget.autoFocus,
                          onTap: widget.onTap,
                          onTapAlwaysCalled: true,
                          onTapOutside: widget.onTapOutside,
                          focusNode: _focusNode,
                          onChanged: widget.onChanged,
                          onSubmitted: widget.onSubmitted,
                          controller: _effectiveController,
                          style: effectiveTextStyle,
                          enabled: widget.enabled,
                          decoration: InputDecoration(hintText: widget.hintText)
                              .applyDefaults(
                            InputDecorationTheme(
                              hintStyle: effectiveHintStyle,
                              // The configuration below is to make sure that the text field
                              // in `SearchBar` will not be overridden by the overall `InputDecorationThemeData`
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                              // Setting `isDense` to true to allow the text field height to be
                              // smaller than 48.0
                              isDense: true,
                            ),
                          ),
                          textInputAction: widget.textInputAction,
                          keyboardType: widget.keyboardType,
                          scrollPadding: widget.scrollPadding,
                        ),
                      ),
                    ),
                    ...trailing,
                  ],
                ),
              ),
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
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStatePropertyAll<Color>(_colors.surface);

  @override
  MaterialStateProperty<double>? get elevation =>
      const MaterialStatePropertyAll<double>(6.0);

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(_colors.shadow);

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      MaterialStatePropertyAll<Color>(_colors.surfaceTint);

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return _colors.onSurface.withOpacity(0.12);
        }
        if (states.contains(MaterialState.hovered)) {
          return _colors.onSurface.withOpacity(0.08);
        }
        if (states.contains(MaterialState.focused)) {
          return Colors.transparent;
        }
        return Colors.transparent;
      });

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(StadiumBorder());

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      const MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 8.0));

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          _textTheme.bodyLarge?.copyWith(color: _colors.onSurface));

  @override
  MaterialStateProperty<TextStyle?> get hintStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          _textTheme.bodyLarge?.copyWith(color: _colors.onSurfaceVariant));

  @override
  BoxConstraints get constraints =>
      const BoxConstraints(minWidth: 360.0, maxWidth: 800.0, minHeight: 56.0);
}

class _ClearButton extends StatefulWidget {
  const _ClearButton({
    super.key,
    this.onPressed,
    required this.controller,
  });

  final VoidCallback? onPressed;
  final TextEditingController controller;

  @override
  State<_ClearButton> createState() => _ClearButtonState();
}

class _ClearButtonState extends State<_ClearButton> {
  bool _isShown = false;

  @override
  void initState() {
    super.initState();
    _isShown = _controllerHasText;
    widget.controller.addListener(_listenController);
  }

  @override
  void didUpdateWidget(_ClearButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_listenController);
      widget.controller.addListener(_listenController);
      _isShown = _controllerHasText;
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listenController);
    super.dispose();
  }

  bool get _controllerHasText => widget.controller.text.isNotEmpty;

  void _listenController() {
    final isShown = _controllerHasText;
    if (isShown != _isShown) {
      setState(() {
        _isShown = isShown;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isShown) {
      return const SizedBox.shrink();
    }
    final theme = IconTheme.of(context);
    return SizedBox(
      width: theme.size,
      child: IconButton(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        padding: EdgeInsets.zero,
        onPressed: widget.onPressed,
        icon: const Icon(Icons.cancel),
      ),
    );
  }
}
