import 'dart:math' as math;

import 'package:flutter/material.dart';

class ToggleOption {
  const ToggleOption({
    this.icon,
    this.label,
  }) : assert(icon != null || label != null);

  final Widget? icon;

  final Widget? label;
}

class ToggleButton extends StatefulWidget {
  final List<ToggleOption> options;
  final ValueChanged<int> onChanged;
  final int selectedIndex;

  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? indicatorColor;
  final Color? backgroundColor;

  final ShapeBorder? shape;

  final TextStyle? labelStyle;
  final double? iconSize;

  final Duration animationDuration;

  final double height;
  final double iconLabelSpacing;

  const ToggleButton({
    super.key,
    required this.options,
    required this.onChanged,
    required this.selectedIndex,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    this.backgroundColor,
    this.labelStyle,
    this.animationDuration = const Duration(milliseconds: 300),
    this.iconLabelSpacing = 4.0,
    this.height = kToolbarHeight,
    this.iconSize,
    this.shape,
  });

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton>
    with SingleTickerProviderStateMixin {
  int? _previousIndex;
  int? _selectedIndex;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 1.0,
      vsync: this,
      duration: widget.animationDuration,
    );
    _previousIndex = widget.selectedIndex;
    _selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(covariant ToggleButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.animationDuration != oldWidget.animationDuration) {
      _controller.duration = widget.animationDuration;
    }
    if (widget.options.length != oldWidget.options.length) {
      _previousIndex = math.min(_previousIndex!, widget.options.length - 1);
      _selectedIndex = math.min(_selectedIndex!, widget.options.length - 1);
    }

    if (widget.selectedIndex != oldWidget.selectedIndex) {
      _previousIndex = _selectedIndex;
      _selectedIndex = widget.selectedIndex;
      _controller.forward(from: 0).whenCompleteOrCancel(
        () {
          if (mounted) {
            setState(() {});
          }
        },
      );
    }
  }

  // void _findSelectedIndex() {
  //   for (int i = 0; i < widget.options.length; i++) {
  //     if (widget.options[i].value == widget.selected) {
  //       _previousIndex = _selectedIndex ?? i;
  //       _selectedIndex = i;
  //       break;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    assert(_selectedIndex != null && _previousIndex != null);
    final selectedIndex = _selectedIndex!;
    final previousIndex = _previousIndex!;

    final colors = ColorScheme.of(context);

    final effectiveShape = widget.shape ??
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        );

    final effectiveLabelStyle = widget.labelStyle ??
        TextTheme.of(context).bodyMedium ??
        DefaultTextStyle.of(context).style;

    final effectiveSelectedColor = widget.selectedColor ?? colors.onPrimary;
    final effectiveUnselectedColor = widget.unselectedColor ?? colors.onSurface;
    final effectiveIndicatorColor = widget.indicatorColor ?? colors.primary;
    final effectiveBackgroundColor = widget.backgroundColor ?? colors.surface;

    final effectiveIconSize = widget.iconSize ?? 24.0;

    final localizations = MaterialLocalizations.of(context);

    final children = List<Widget>.generate(
      widget.options.length,
      (index) {
        final item = widget.options[index];
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            widget.onChanged(index);
          },
          child: Semantics(
            selected: index == selectedIndex,
            label: localizations.tabLabel(
              tabIndex: index + 1,
              tabCount: widget.options.length,
            ),
            child: _ToggleButtonItem(
              item: item,
              iconLabelSpacing: widget.iconLabelSpacing,
            ),
          ),
        );
      },
    );

    if (_controller.isAnimating) {
      assert(selectedIndex != previousIndex);
      children[selectedIndex] = _AnimatedToggleButtonItem(
        color: effectiveUnselectedColor,
        selectedColor: effectiveSelectedColor,
        animation: _controller,
        isSelected: true,
        child: children[selectedIndex],
      );
      children[previousIndex] = _AnimatedToggleButtonItem(
        color: effectiveUnselectedColor,
        selectedColor: effectiveSelectedColor,
        animation: _controller,
        isSelected: false,
        child: children[previousIndex],
      );
    } else {
      children[selectedIndex] = _AnimatedToggleButtonItem(
        color: effectiveUnselectedColor,
        selectedColor: effectiveSelectedColor,
        animation: kAlwaysCompleteAnimation,
        isSelected: true,
        child: children[selectedIndex],
      );
    }

    return Material(
      color: effectiveBackgroundColor,
      shape: effectiveShape,
      clipBehavior: Clip.antiAlias,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double itemWidth = constraints.maxWidth / widget.options.length;
          return Stack(
            children: [
              AnimatedPositioned(
                duration: widget.animationDuration,
                curve: Curves.easeInOut,
                left: selectedIndex * itemWidth,
                bottom: 0,
                top: 0,
                child: Container(
                  width: itemWidth,
                  decoration: ShapeDecoration(
                    shape: effectiveShape,
                    color: effectiveIndicatorColor,
                  ),
                ),
              ),
              SizedBox(
                height: widget.height,
                child: Semantics(
                  label: localizations.tabLabel(
                    tabIndex: selectedIndex + 1,
                    tabCount: widget.options.length,
                  ),
                  child: DefaultTextStyle(
                    style: effectiveLabelStyle,
                    child: IconTheme(
                      data: IconThemeData(
                        size: effectiveIconSize,
                      ),
                      child: _AnimatedToggleButtonItem(
                        color: effectiveUnselectedColor,
                        selectedColor: effectiveSelectedColor,
                        animation: kAlwaysCompleteAnimation,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: children
                              .map(
                                (e) => Expanded(child: e),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AnimatedToggleButtonItem extends AnimatedWidget {
  const _AnimatedToggleButtonItem({
    super.key,
    required this.color,
    required this.selectedColor,
    required this.child,
    this.isSelected = false,
    required Animation<double> animation,
  }) : super(listenable: animation);

  final Color color;
  final Color selectedColor;
  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    final effectiveColor = isSelected
        ? Color.lerp(color, selectedColor, animation.value)
        : Color.lerp(selectedColor, color, animation.value);

    return DefaultTextStyle.merge(
      style: TextStyle(color: effectiveColor),
      child: IconTheme.merge(
        data: IconThemeData(
          color: effectiveColor,
        ),
        child: child,
      ),
    );
  }
}

class _ToggleButtonItem extends StatelessWidget {
  const _ToggleButtonItem({
    super.key,
    required this.item,
    required this.iconLabelSpacing,
  });

  final ToggleOption item;
  final double iconLabelSpacing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        spacing: iconLabelSpacing,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (item.icon != null) item.icon!,
          if (item.label != null) item.label!,
        ],
      ),
    );
    ;
  }
}
