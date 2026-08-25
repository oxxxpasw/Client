import 'package:flutter/material.dart';
import 'dart:math' as math;

class SliverListSeparated extends SliverList {
  SliverListSeparated({
    super.key,
    required NullableIndexedWidgetBuilder itemBuilder,
    ChildIndexGetter? findChildIndexCallback,
    required NullableIndexedWidgetBuilder separatorBuilder,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final int itemIndex = index ~/ 2;
              final Widget? widget;
              if (index.isEven) {
                widget = itemBuilder(context, itemIndex);
              } else {
                widget = separatorBuilder(context, itemIndex);
                assert(() {
                  if (widget == null) {
                    throw FlutterError('separatorBuilder cannot return null.');
                  }
                  return true;
                }());
              }
              return widget;
            },
            findChildIndexCallback: findChildIndexCallback,
            childCount:
                itemCount == null ? null : math.max(0, itemCount * 2 - 1),
            addAutomaticKeepAlives: addAutomaticKeepAlives,
            addRepaintBoundaries: addRepaintBoundaries,
            addSemanticIndexes: addSemanticIndexes,
            semanticIndexCallback: (Widget _, int index) {
              return index.isEven ? index ~/ 2 : null;
            },
          ),
        );
}
