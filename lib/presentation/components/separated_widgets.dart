import 'dart:math' as math;

import 'package:flutter/material.dart';

class SeparatedRow extends Row {
  SeparatedRow({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    List<Widget> children = const <Widget>[],
    Widget separator = const SizedBox.shrink(),
  }) : super(
          children: List.generate(
            _computeActualChildCount(children.length),
            (int index) {
              final int itemIndex = index ~/ 2;
              final Widget widget;
              if (index.isEven) {
                widget = children[itemIndex];
              } else {
                widget = separator;
              }
              return widget;
            },
          ),
        );

  static int _computeActualChildCount(int itemCount) {
    return math.max(0, itemCount * 2 - 1);
  }
}

class SeparatedColumn extends Column {
  SeparatedColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    List<Widget> children = const <Widget>[],
    Widget separator = const SizedBox.shrink(),
  }) : super(
          children: List.generate(
            _computeActualChildCount(children.length),
            (int index) {
              final int itemIndex = index ~/ 2;
              final Widget widget;
              if (index.isEven) {
                widget = children[itemIndex];
              } else {
                widget = separator;
              }
              return widget;
            },
          ),
        );

  static int _computeActualChildCount(int itemCount) {
    return math.max(0, itemCount * 2 - 1);
  }
}
