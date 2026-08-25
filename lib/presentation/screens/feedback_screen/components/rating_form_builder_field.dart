import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:math' as math;

import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class RatingFormBuilderField extends FormBuilderField<int> {
  RatingFormBuilderField({
    super.key,
    super.onSaved,
    super.initialValue,
    super.autovalidateMode,
    super.enabled = true,
    super.validator,
    super.restorationId,
    required super.name,
    super.valueTransformer,
    super.onChanged,
    super.onReset,
    super.focusNode,
    this.glowColor,
    this.maxRating,
    this.textDirection,
    this.color,
    this.unratedColor,
    this.direction = Axis.horizontal,
    this.ignoreGestures = false,
    this.itemCount = 5,
    this.itemPadding = EdgeInsets.zero,
    this.itemSize = 40.0,
    this.minRating = 0,
    this.tapOnlyMode = false,
    this.wrapAlignment = WrapAlignment.start,
    this.icon = Icons.star,
    this.unratedIcon = Icons.star,
    this.errorStyle,
  }) : super(
          builder: (field) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar(
                  rating: field.value ?? 0,
                  glowColor: glowColor,
                  maxRating: maxRating,
                  textDirection: textDirection,
                  color: color,
                  unratedColor: unratedColor,
                  direction: direction,
                  ignoreGestures: ignoreGestures,
                  itemCount: itemCount,
                  itemPadding: itemPadding,
                  itemSize: itemSize,
                  minRating: minRating,
                  tapOnlyMode: tapOnlyMode,
                  wrapAlignment: wrapAlignment,
                  icon: icon,
                  unratedIcon: unratedIcon,
                  onRatingUpdate: (rating) {
                    field.didChange(rating.toInt());
                  },
                ),
                if (field.errorText case String error)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding2,
                    ),
                    child: Text(
                      error,
                      style: errorStyle ??
                          Theme.of(field.context)
                              .inputDecorationTheme
                              .errorStyle,
                    ),
                  ),
              ],
            );
          },
        );

  /// Defines color for glow.
  ///
  /// Default is [ColorScheme.secondary].
  final Color? glowColor;

  /// Sets maximum rating
  ///
  /// Default is [itemCount].
  final int? maxRating;

  /// {@template flutterRatingBar.textDirection}
  /// The text flows from right to left if [textDirection] = TextDirection.rtl
  /// {@endtemplate}
  final TextDirection? textDirection;

  final Color? color;

  final Color? unratedColor;

  /// {@template flutterRatingBar.direction}
  /// Direction of rating bar.
  ///
  /// Default = Axis.horizontal
  /// {@endtemplate}
  final Axis direction;

  /// if set to true, will disable any gestures over the rating bar.
  ///
  /// Default is false.
  final bool ignoreGestures;

  /// {@template flutterRatingBar.itemCount}
  /// Defines total number of rating bar items.
  ///
  /// Default is 5.
  /// {@endtemplate}
  final int itemCount;

  /// {@template flutterRatingBar.itemPadding}
  /// The amount of space by which to inset each rating item.
  /// {@endtemplate}
  final EdgeInsetsGeometry itemPadding;

  /// {@template flutterRatingBar.itemSize}
  /// Defines width and height of each rating item in the bar.
  ///
  /// Default is 40.0
  /// {@endtemplate}
  final double itemSize;

  /// Sets minimum rating
  ///
  /// Default is 0.
  final int minRating;

  /// if set to true will disable drag to rate feature. Note: Enabling this mode will disable half rating capability.
  ///
  /// Default is false.
  final bool tapOnlyMode;

  /// How the item within the [RatingBar] should be placed in the main axis.
  ///
  /// For example, if [wrapAlignment] is [WrapAlignment.center], the item in
  /// the RatingBar are grouped together in the center of their run in the main axis.
  ///
  /// Defaults to [WrapAlignment.start].
  final WrapAlignment wrapAlignment;

  final IconData icon;

  final IconData unratedIcon;

  final TextStyle? errorStyle;

  @override
  FormBuilderFieldState<FormBuilderField<int>, int> createState() =>
      _RatingFormBuilderFieldState();
}

class _RatingFormBuilderFieldState
    extends FormBuilderFieldState<FormBuilderField<int>, int> {}

class RatingBar extends StatefulWidget {
  const RatingBar({
    super.key,
    required this.onRatingUpdate,
    this.glowColor,
    this.maxRating,
    this.textDirection,
    this.color,
    this.unratedColor,
    this.direction = Axis.horizontal,
    this.ignoreGestures = false,
    this.rating = 0,
    this.itemCount = 5,
    this.itemPadding = EdgeInsets.zero,
    this.itemSize = 40.0,
    this.minRating = 0,
    this.tapOnlyMode = false,
    this.wrapAlignment = WrapAlignment.start,
    this.icon = Icons.star,
    this.unratedIcon = Icons.star,
  });

  /// Return current rating whenever rating is updated.
  ///
  /// [updateOnDrag] can be used to change the behaviour how the callback reports the update.
  final ValueChanged<int> onRatingUpdate;

  /// Defines color for glow.
  ///
  /// Default is [ColorScheme.secondary].
  final Color? glowColor;

  /// Sets maximum rating
  ///
  /// Default is [itemCount].
  final int? maxRating;

  /// {@template flutterRatingBar.textDirection}
  /// The text flows from right to left if [textDirection] = TextDirection.rtl
  /// {@endtemplate}
  final TextDirection? textDirection;

  final Color? color;

  final Color? unratedColor;

  final IconData icon;

  final IconData unratedIcon;

  /// {@template flutterRatingBar.direction}
  /// Direction of rating bar.
  ///
  /// Default = Axis.horizontal
  /// {@endtemplate}
  final Axis direction;

  /// if set to true, will disable any gestures over the rating bar.
  ///
  /// Default is false.
  final bool ignoreGestures;

  /// Defines the initial rating to be set to the rating bar.
  final int rating;

  /// {@template flutterRatingBar.itemCount}
  /// Defines total number of rating bar items.
  ///
  /// Default is 5.
  /// {@endtemplate}
  final int itemCount;

  /// {@template flutterRatingBar.itemPadding}
  /// The amount of space by which to inset each rating item.
  /// {@endtemplate}
  final EdgeInsetsGeometry itemPadding;

  /// {@template flutterRatingBar.itemSize}
  /// Defines width and height of each rating item in the bar.
  ///
  /// Default is 40.0
  /// {@endtemplate}
  final double itemSize;

  /// Sets minimum rating
  ///
  /// Default is 0.
  final int minRating;

  /// if set to true will disable drag to rate feature. Note: Enabling this mode will disable half rating capability.
  ///
  /// Default is false.
  final bool tapOnlyMode;

  /// How the item within the [RatingBar] should be placed in the main axis.
  ///
  /// For example, if [wrapAlignment] is [WrapAlignment.center], the item in
  /// the RatingBar are grouped together in the center of their run in the main axis.
  ///
  /// Defaults to [WrapAlignment.start].
  final WrapAlignment wrapAlignment;

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  bool _isRTL = false;

  late final ValueNotifier<bool> _glow;

  @override
  void initState() {
    super.initState();
    _glow = ValueNotifier(false);
  }

  @override
  void dispose() {
    _glow.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textDirection = widget.textDirection ?? Directionality.of(context);
    _isRTL = textDirection == TextDirection.rtl;

    return Material(
      color: Colors.transparent,
      child: Wrap(
        alignment: WrapAlignment.start,
        textDirection: textDirection,
        direction: widget.direction,
        children: List.generate(
          widget.itemCount,
          (index) => _buildRating(context, index),
        ),
      ),
    );
  }

  Widget _buildRating(BuildContext context, int index) {
    final ratingWidget = index >= widget.rating
        ? Icon(
            widget.unratedIcon,
            color: widget.unratedColor ?? Colors.grey,
            size: widget.itemSize,
          )
        : Icon(
            widget.icon,
            color: widget.color ?? Colors.amber,
            size: widget.itemSize,
          );

    return IgnorePointer(
      ignoring: widget.ignoreGestures,
      child: GestureDetector(
        onTapDown: (details) {
          int value;
          if (index == 0 && widget.rating == 1) {
            value = 0;
          } else {
            value = index + 1;
          }

          value = math.max(value, widget.minRating);
          widget.onRatingUpdate(value);
        },
        onHorizontalDragStart: _isHorizontal ? _onDragStart : null,
        onHorizontalDragEnd: _isHorizontal ? _onDragEnd : null,
        onHorizontalDragUpdate: _isHorizontal ? _onDragUpdate : null,
        onVerticalDragStart: _isHorizontal ? null : _onDragStart,
        onVerticalDragEnd: _isHorizontal ? null : _onDragEnd,
        onVerticalDragUpdate: _isHorizontal ? null : _onDragUpdate,
        child: Padding(
          padding: widget.itemPadding,
          child: ratingWidget,
        ),
      ),
    );
  }

  bool get _isHorizontal => widget.direction == Axis.horizontal;

  void _onDragUpdate(DragUpdateDetails dragDetails) {
    if (!widget.tapOnlyMode) {
      final box = context.findRenderObject() as RenderBox?;
      if (box == null) return;

      final pos = box.globalToLocal(dragDetails.globalPosition);
      double i;
      if (widget.direction == Axis.horizontal) {
        i = pos.dx / (widget.itemSize + widget.itemPadding.horizontal);
      } else {
        i = pos.dy / (widget.itemSize + widget.itemPadding.vertical);
      }
      var currentRating = i.round().toDouble();
      if (currentRating > widget.itemCount) {
        currentRating = widget.itemCount.toDouble();
      }
      if (currentRating < 0) {
        currentRating = 0.0;
      }
      if (_isRTL && widget.direction == Axis.horizontal) {
        currentRating = widget.itemCount - currentRating;
      }

      widget.onRatingUpdate(currentRating
          .clamp(widget.minRating, widget.maxRating ?? widget.itemCount)
          .toInt());
    }
  }

  void _onDragStart(DragStartDetails details) {
    _glow.value = true;
  }

  void _onDragEnd(DragEndDetails details) {
    _glow.value = false;
  }
}
