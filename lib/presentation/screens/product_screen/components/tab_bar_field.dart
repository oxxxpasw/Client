import 'package:sosedifedi/presentation/components/adaptive_tab_bar/adaptive_tab_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TabItem<T> {
  TabItem({
    this.text,
    this.child,
    this.icon,
    this.iconMargin = const EdgeInsets.only(bottom: 10.0),
    this.height,
    required this.value,
  });

  final String? text;
  final Widget? child;
  final Icon? icon;
  final EdgeInsetsGeometry iconMargin;
  final double? height;
  final T value;
}

class TabBarField<T> extends StatefulWidget {
  const TabBarField({
    super.key,
    required this.items,

    //TabBar properties
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
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
    this.backgroundColor,
    this.borderRadius,
    this.value,
    this.onChange,
  });

  final List<TabItem<T>> items;

  final T? value;

  /// Whether this tab bar can be scrolled horizontally.
  ///
  /// If [isScrollable] is true, then each tab is as wide as needed for its label
  /// and the entire [TabBar] is scrollable. Otherwise each tab gets an equal
  /// share of the available space.
  final bool isScrollable;

  /// The amount of space by which to inset the tab bar.
  ///
  /// When [isScrollable] is false, this will yield the same result as if you had wrapped your
  /// [TabBar] in a [Padding] widget. When [isScrollable] is true, the scrollable itself is inset,
  /// allowing the padding to scroll with the tab bar, rather than enclosing it.
  final EdgeInsetsGeometry? padding;

  /// The color of the line that appears below the selected tab.
  ///
  /// If this parameter is null, then the value of the Theme's indicatorColor
  /// property is used.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// this property is ignored.
  final Color? indicatorColor;

  /// The thickness of the line that appears below the selected tab.
  ///
  /// The value of this parameter must be greater than zero and its default
  /// value is 2.0.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// this property is ignored.
  final double indicatorWeight;

  /// Padding for indicator.
  /// This property will now no longer be ignored even if indicator is declared
  /// or provided by [TabBarTheme]
  ///
  /// For [isScrollable] tab bars, specifying [kTabLabelPadding] will align
  /// the indicator with the tab's text for [Tab] widgets and all but the
  /// shortest [Tab.text] values.
  ///
  /// The default value of [indicatorPadding] is [EdgeInsets.zero].
  final EdgeInsetsGeometry? indicatorPadding;

  /// Defines the appearance of the selected tab indicator.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// the [indicatorColor], and [indicatorWeight] properties are ignored.
  ///
  /// The default, underline-style, selected tab indicator can be defined with
  /// [UnderlineTabIndicator].
  ///
  /// The indicator's size is based on the tab's bounds. If [indicatorSize]
  /// is [TabBarIndicatorSize.tab] the tab's bounds are as wide as the space
  /// occupied by the tab in the tab bar. If [indicatorSize] is
  /// [TabBarIndicatorSize.label], then the tab's bounds are only as wide as
  /// the tab widget itself.
  ///
  /// See also:
  ///
  ///  * [splashBorderRadius], which defines the clipping radius of the splash
  ///    and is generally used with [BoxDecoration.borderRadius].
  final Decoration? indicator;

  /// Whether this tab bar should automatically adjust the [indicatorColor].
  ///
  /// If [automaticIndicatorColorAdjustment] is true,
  /// then the [indicatorColor] will be automatically adjusted to [Colors.white]
  /// when the [indicatorColor] is same as [Material.color] of the [Material] parent widget.
  final bool automaticIndicatorColorAdjustment;

  /// Defines how the selected tab indicator's size is computed.
  ///
  /// The size of the selected tab indicator is defined relative to the
  /// tab's overall bounds if [indicatorSize] is [TabBarIndicatorSize.tab]
  /// (the default) or relative to the bounds of the tab's widget if
  /// [indicatorSize] is [TabBarIndicatorSize.label].
  ///
  /// The selected tab's location appearance can be refined further with
  /// the [indicatorColor], [indicatorWeight], [indicatorPadding], and
  /// [indicator] properties.
  final TabBarIndicatorSize? indicatorSize;

  /// The color of the divider.
  ///
  /// If null and [ThemeData.useMaterial3] is true, [TabBarTheme.dividerColor]
  /// color is used. If that is null and [ThemeData.useMaterial3] is true,
  /// [ColorScheme.surfaceVariant] will be used, otherwise divider will not be drawn.
  final Color? dividerColor;

  /// The color of selected tab labels.
  ///
  /// If [ThemeData.useMaterial3] is false, unselected tab labels are rendered with
  /// the same color with 70% opacity unless [unselectedLabelColor] is non-null.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [ColorScheme.primary]
  /// will be used, otherwise the color of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] text color is used.
  final Color? labelColor;

  /// The color of unselected tab labels.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [ColorScheme.onSurfaceVariant]
  /// will be used, otherwise unselected tab labels are rendered with the
  /// [labelColor] with 70% opacity.
  final Color? unselectedLabelColor;

  /// The text style of the selected tab labels.
  ///
  /// If [unselectedLabelStyle] is null, then this text style will be used for
  /// both selected and unselected label styles.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [TextTheme.titleSmall]
  /// will be used, otherwise the text style of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] definition is used.
  final TextStyle? labelStyle;

  /// The padding added to each of the tab labels.
  ///
  /// If there are few tabs with both icon and text and few
  /// tabs with only icon or text, this padding is vertically
  /// adjusted to provide uniform padding to all tabs.
  ///
  /// If this property is null, then kTabLabelPadding is used.
  final EdgeInsetsGeometry? labelPadding;

  /// The text style of the unselected tab labels.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [TextTheme.titleSmall]
  /// will be used, otherwise then the [labelStyle] value is used. If [labelStyle]
  /// is null, the text style of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] definition is used.
  final TextStyle? unselectedLabelStyle;

  /// Defines the ink response focus, hover, and splash colors.
  ///
  /// If non-null, it is resolved against one of [MaterialState.focused],
  /// [MaterialState.hovered], and [MaterialState.pressed].
  ///
  /// [MaterialState.pressed] triggers a ripple (an ink splash), per
  /// the current Material Design spec.
  ///
  /// If the overlay color is null or resolves to null, then the default values
  /// for [InkResponse.focusColor], [InkResponse.hoverColor], [InkResponse.splashColor],
  /// and [InkResponse.highlightColor] will be used instead.
  final MaterialStateProperty<Color?>? overlayColor;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@template flutter.material.tabs.mouseCursor}
  /// The cursor for a mouse pointer when it enters or is hovering over the
  /// individual tab widgets.
  ///
  /// If [mouseCursor] is a [MaterialStateProperty<MouseCursor>],
  /// [MaterialStateProperty.resolve] is used for the following [MaterialState]s:
  ///
  ///  * [MaterialState.selected].
  /// {@endtemplate}
  ///
  /// If null, then the value of [TabBarTheme.mouseCursor] is used. If
  /// that is also null, then [MaterialStateMouseCursor.clickable] is used.
  ///
  /// See also:
  ///
  ///  * [MaterialStateMouseCursor], which can be used to create a [MouseCursor]
  ///    that is also a [MaterialStateProperty<MouseCursor>].
  final MouseCursor? mouseCursor;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a long-press
  /// will produce a short vibration, when feedback is enabled.
  ///
  /// Defaults to true.
  final bool? enableFeedback;

  /// An optional callback that's called when the [TabBar] is tapped.
  ///
  /// The callback is applied to the index of the tab where the tap occurred.
  ///
  /// This callback has no effect on the default handling of taps. It's for
  /// applications that want to do a little extra work when a tab is tapped,
  /// even if the tap doesn't change the TabController's index. TabBar [onTap]
  /// callbacks should not make changes to the TabController since that would
  /// interfere with the default tap handler.
  final ValueChanged<int>? onTap;

  /// How the [TabBar]'s scroll view should respond to user input.
  ///
  /// For example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view.
  ///
  /// Defaults to matching platform conventions.
  final ScrollPhysics? physics;

  /// Creates the tab bar's [InkWell] splash factory, which defines
  /// the appearance of "ink" splashes that occur in response to taps.
  ///
  /// Use [NoSplash.splashFactory] to defeat ink splash rendering. For example
  /// to defeat both the splash and the hover/pressed overlay, but not the
  /// keyboard focused overlay:
  ///
  /// ```dart
  /// TabBar(
  ///   splashFactory: NoSplash.splashFactory,
  ///   overlayColor: MaterialStateProperty.resolveWith<Color?>(
  ///     (Set<MaterialState> states) {
  ///       return states.contains(MaterialState.focused) ? null : Colors.transparent;
  ///     },
  ///   ),
  ///   tabs: const <Widget>[
  ///     // ...
  ///   ],
  /// )
  /// ```
  final InteractiveInkFeatureFactory? splashFactory;

  /// Defines the clipping radius of splashes that extend outside the bounds of the tab.
  ///
  /// This can be useful to match the [BoxDecoration.borderRadius] provided as [indicator].
  ///
  /// ```dart
  /// TabBar(
  ///   indicator: BoxDecoration(
  ///     borderRadius: BorderRadius.circular(40),
  ///   ),
  ///   splashBorderRadius: BorderRadius.circular(40),
  ///   tabs: const <Widget>[
  ///     // ...
  ///   ],
  /// )
  /// ```
  ///
  /// If this property is null, it is interpreted as [BorderRadius.zero].
  final BorderRadius? splashBorderRadius;

  final Color? backgroundColor;

  final BorderRadius? borderRadius;

  final void Function(T? value)? onChange;

  @override
  State<TabBarField<T>> createState() => _TabBarFieldState<T>();
}

class _TabBarFieldState<T> extends State<TabBarField<T>>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  T? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _tabController = TabController(
      length: widget.items.length,
      vsync: this,
      initialIndex: currentIndex,
    );
    _tabController.addListener(indexChange);
  }

  void reset() {
    _tabController.index = currentIndex;
  }

  void indexChange() {
    setState(() {
      _value = widget.items[_tabController.index].value;
      widget.onChange?.call(_value);
    });
  }

  @override
  void didUpdateWidget(covariant TabBarField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _value = widget.value;
    if (oldWidget.items.length != widget.items.length) {
      _tabController.removeListener(indexChange);
      _tabController.dispose();
      _tabController = TabController(
        length: widget.items.length,
        vsync: this,
        initialIndex: currentIndex,
      );
      _tabController.addListener(indexChange);
    } else {
      _tabController.index = currentIndex;
    }
  }

  int get currentIndex => _value != null
      ? widget.items.map((e) => e.value).toList().indexOf(_value as T)
      : 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTabBar(
      backgroundColor: widget.backgroundColor,
      borderRadius: widget.borderRadius,
      controller: _tabController,
      isScrollable: widget.isScrollable,
      padding: widget.padding,
      indicatorColor: widget.indicatorColor,
      automaticIndicatorColorAdjustment:
          widget.automaticIndicatorColorAdjustment,
      indicatorWeight: widget.indicatorWeight,
      indicatorPadding: widget.indicatorPadding,
      indicator: widget.indicator,
      indicatorSize: widget.indicatorSize,
      dividerColor: widget.dividerColor,
      labelColor: widget.labelColor,
      labelStyle: widget.labelStyle,
      labelPadding: widget.labelPadding,
      unselectedLabelColor: widget.unselectedLabelColor,
      unselectedLabelStyle: widget.unselectedLabelStyle,
      dragStartBehavior: widget.dragStartBehavior,
      overlayColor: widget.overlayColor,
      mouseCursor: widget.mouseCursor,
      enableFeedback: widget.enableFeedback,
      onTap: widget.onTap,
      physics: widget.physics,
      splashFactory: widget.splashFactory,
      splashBorderRadius: widget.splashBorderRadius,
      tabs: widget.items
          .map(
            (item) => Tab(
              text: item.text,
              icon: item.icon,
              iconMargin: item.iconMargin,
              height: item.height,
              child: item.child,
            ),
          )
          .toList(),
    );
  }
}

class FormBuilderTabBarField<T> extends FormBuilderField<T> {
  final List<TabItem<T>> items;

  /// Whether this tab bar can be scrolled horizontally.
  ///
  /// If [isScrollable] is true, then each tab is as wide as needed for its label
  /// and the entire [TabBar] is scrollable. Otherwise each tab gets an equal
  /// share of the available space.
  final bool isScrollable;

  /// The amount of space by which to inset the tab bar.
  ///
  /// When [isScrollable] is false, this will yield the same result as if you had wrapped your
  /// [TabBar] in a [Padding] widget. When [isScrollable] is true, the scrollable itself is inset,
  /// allowing the padding to scroll with the tab bar, rather than enclosing it.
  final EdgeInsetsGeometry? padding;

  /// The color of the line that appears below the selected tab.
  ///
  /// If this parameter is null, then the value of the Theme's indicatorColor
  /// property is used.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// this property is ignored.
  final Color? indicatorColor;

  /// The thickness of the line that appears below the selected tab.
  ///
  /// The value of this parameter must be greater than zero and its default
  /// value is 2.0.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// this property is ignored.
  final double indicatorWeight;

  /// Padding for indicator.
  /// This property will now no longer be ignored even if indicator is declared
  /// or provided by [TabBarTheme]
  ///
  /// For [isScrollable] tab bars, specifying [kTabLabelPadding] will align
  /// the indicator with the tab's text for [Tab] widgets and all but the
  /// shortest [Tab.text] values.
  ///
  /// The default value of [indicatorPadding] is [EdgeInsets.zero].
  final EdgeInsetsGeometry? indicatorPadding;

  /// Defines the appearance of the selected tab indicator.
  ///
  /// If [indicator] is specified or provided from [TabBarTheme],
  /// the [indicatorColor], and [indicatorWeight] properties are ignored.
  ///
  /// The default, underline-style, selected tab indicator can be defined with
  /// [UnderlineTabIndicator].
  ///
  /// The indicator's size is based on the tab's bounds. If [indicatorSize]
  /// is [TabBarIndicatorSize.tab] the tab's bounds are as wide as the space
  /// occupied by the tab in the tab bar. If [indicatorSize] is
  /// [TabBarIndicatorSize.label], then the tab's bounds are only as wide as
  /// the tab widget itself.
  ///
  /// See also:
  ///
  ///  * [splashBorderRadius], which defines the clipping radius of the splash
  ///    and is generally used with [BoxDecoration.borderRadius].
  final Decoration? indicator;

  /// Whether this tab bar should automatically adjust the [indicatorColor].
  ///
  /// If [automaticIndicatorColorAdjustment] is true,
  /// then the [indicatorColor] will be automatically adjusted to [Colors.white]
  /// when the [indicatorColor] is same as [Material.color] of the [Material] parent widget.
  final bool automaticIndicatorColorAdjustment;

  /// Defines how the selected tab indicator's size is computed.
  ///
  /// The size of the selected tab indicator is defined relative to the
  /// tab's overall bounds if [indicatorSize] is [TabBarIndicatorSize.tab]
  /// (the default) or relative to the bounds of the tab's widget if
  /// [indicatorSize] is [TabBarIndicatorSize.label].
  ///
  /// The selected tab's location appearance can be refined further with
  /// the [indicatorColor], [indicatorWeight], [indicatorPadding], and
  /// [indicator] properties.
  final TabBarIndicatorSize? indicatorSize;

  /// The color of the divider.
  ///
  /// If null and [ThemeData.useMaterial3] is true, [TabBarTheme.dividerColor]
  /// color is used. If that is null and [ThemeData.useMaterial3] is true,
  /// [ColorScheme.surfaceVariant] will be used, otherwise divider will not be drawn.
  final Color? dividerColor;

  /// The color of selected tab labels.
  ///
  /// If [ThemeData.useMaterial3] is false, unselected tab labels are rendered with
  /// the same color with 70% opacity unless [unselectedLabelColor] is non-null.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [ColorScheme.primary]
  /// will be used, otherwise the color of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] text color is used.
  final Color? labelColor;

  /// The color of unselected tab labels.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [ColorScheme.onSurfaceVariant]
  /// will be used, otherwise unselected tab labels are rendered with the
  /// [labelColor] with 70% opacity.
  final Color? unselectedLabelColor;

  /// The text style of the selected tab labels.
  ///
  /// If [unselectedLabelStyle] is null, then this text style will be used for
  /// both selected and unselected label styles.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [TextTheme.titleSmall]
  /// will be used, otherwise the text style of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] definition is used.
  final TextStyle? labelStyle;

  /// The padding added to each of the tab labels.
  ///
  /// If there are few tabs with both icon and text and few
  /// tabs with only icon or text, this padding is vertically
  /// adjusted to provide uniform padding to all tabs.
  ///
  /// If this property is null, then kTabLabelPadding is used.
  final EdgeInsetsGeometry? labelPadding;

  /// The text style of the unselected tab labels.
  ///
  /// If this property is null and [ThemeData.useMaterial3] is true, [TextTheme.titleSmall]
  /// will be used, otherwise then the [labelStyle] value is used. If [labelStyle]
  /// is null, the text style of the [ThemeData.primaryTextTheme]'s
  /// [TextTheme.bodyLarge] definition is used.
  final TextStyle? unselectedLabelStyle;

  /// Defines the ink response focus, hover, and splash colors.
  ///
  /// If non-null, it is resolved against one of [MaterialState.focused],
  /// [MaterialState.hovered], and [MaterialState.pressed].
  ///
  /// [MaterialState.pressed] triggers a ripple (an ink splash), per
  /// the current Material Design spec.
  ///
  /// If the overlay color is null or resolves to null, then the default values
  /// for [InkResponse.focusColor], [InkResponse.hoverColor], [InkResponse.splashColor],
  /// and [InkResponse.highlightColor] will be used instead.
  final MaterialStateProperty<Color?>? overlayColor;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@template flutter.material.tabs.mouseCursor}
  /// The cursor for a mouse pointer when it enters or is hovering over the
  /// individual tab widgets.
  ///
  /// If [mouseCursor] is a [MaterialStateProperty<MouseCursor>],
  /// [MaterialStateProperty.resolve] is used for the following [MaterialState]s:
  ///
  ///  * [MaterialState.selected].
  /// {@endtemplate}
  ///
  /// If null, then the value of [TabBarTheme.mouseCursor] is used. If
  /// that is also null, then [MaterialStateMouseCursor.clickable] is used.
  ///
  /// See also:
  ///
  ///  * [MaterialStateMouseCursor], which can be used to create a [MouseCursor]
  ///    that is also a [MaterialStateProperty<MouseCursor>].
  final MouseCursor? mouseCursor;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a long-press
  /// will produce a short vibration, when feedback is enabled.
  ///
  /// Defaults to true.
  final bool? enableFeedback;

  /// An optional callback that's called when the [TabBar] is tapped.
  ///
  /// The callback is applied to the index of the tab where the tap occurred.
  ///
  /// This callback has no effect on the default handling of taps. It's for
  /// applications that want to do a little extra work when a tab is tapped,
  /// even if the tap doesn't change the TabController's index. TabBar [onTap]
  /// callbacks should not make changes to the TabController since that would
  /// interfere with the default tap handler.
  final ValueChanged<int>? onTap;

  /// How the [TabBar]'s scroll view should respond to user input.
  ///
  /// For example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view.
  ///
  /// Defaults to matching platform conventions.
  final ScrollPhysics? physics;

  /// Creates the tab bar's [InkWell] splash factory, which defines
  /// the appearance of "ink" splashes that occur in response to taps.
  ///
  /// Use [NoSplash.splashFactory] to defeat ink splash rendering. For example
  /// to defeat both the splash and the hover/pressed overlay, but not the
  /// keyboard focused overlay:
  ///
  /// ```dart
  /// TabBar(
  ///   splashFactory: NoSplash.splashFactory,
  ///   overlayColor: MaterialStateProperty.resolveWith<Color?>(
  ///     (Set<MaterialState> states) {
  ///       return states.contains(MaterialState.focused) ? null : Colors.transparent;
  ///     },
  ///   ),
  ///   tabs: const <Widget>[
  ///     // ...
  ///   ],
  /// )
  /// ```
  final InteractiveInkFeatureFactory? splashFactory;

  /// Defines the clipping radius of splashes that extend outside the bounds of the tab.
  ///
  /// This can be useful to match the [BoxDecoration.borderRadius] provided as [indicator].
  ///
  /// ```dart
  /// TabBar(
  ///   indicator: BoxDecoration(
  ///     borderRadius: BorderRadius.circular(40),
  ///   ),
  ///   splashBorderRadius: BorderRadius.circular(40),
  ///   tabs: const <Widget>[
  ///     // ...
  ///   ],
  /// )
  /// ```
  ///
  /// If this property is null, it is interpreted as [BorderRadius.zero].
  final BorderRadius? splashBorderRadius;

  final Color? backgroundColor;

  final BorderRadius? borderRadius;

  FormBuilderTabBarField({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled = true,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    required this.items,

    //TabBar properties
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
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
    this.backgroundColor,
    this.borderRadius,
  }) : super(
          builder: (FormFieldState<T> field) {
            final state = field as _FormBuilderModalDropdownFieldState<T>;

            return TabBarField<T>(
              value: state.value,
              backgroundColor: backgroundColor,
              onChange: (value) {
                state.didChange(value);
              },
              borderRadius: borderRadius,
              isScrollable: isScrollable,
              padding: padding,
              indicatorColor: indicatorColor,
              automaticIndicatorColorAdjustment:
                  automaticIndicatorColorAdjustment,
              indicatorWeight: indicatorWeight,
              indicatorPadding: indicatorPadding,
              indicator: indicator,
              indicatorSize: indicatorSize,
              dividerColor: dividerColor,
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
              items: items,
            );
          },
        );

  @override
  FormBuilderFieldState<FormBuilderTabBarField<T>, T> createState() =>
      _FormBuilderModalDropdownFieldState<T>();
}

class _FormBuilderModalDropdownFieldState<T>
    extends FormBuilderFieldState<FormBuilderTabBarField<T>, T>
    with SingleTickerProviderStateMixin {}
