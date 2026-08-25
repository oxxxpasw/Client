import 'package:flutter/material.dart';
import 'package:diffutil_dart/diffutil.dart';

class AutoAnimatedSliverList<T> extends StatefulWidget {
  static const Duration _kDuration = Duration(milliseconds: 300);
  const AutoAnimatedSliverList({
    Key? key,
    required this.items,
    required this.itemBuilder,
    required this.keyingFunction,
    this.insertDuration = _kDuration,
    this.removeDuration = _kDuration,
  }) : super(key: key);

  final List<T> items;
  final Widget Function(BuildContext, T, Animation<double>) itemBuilder;
  final Key Function(T item) keyingFunction;

  final Duration insertDuration;
  final Duration removeDuration;

  @override
  _AutoAnimatedSliverListState<T> createState() =>
      _AutoAnimatedSliverListState<T>();
}

class _AutoAnimatedSliverListState<T> extends State<AutoAnimatedSliverList<T>> {
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  void didUpdateWidget(AutoAnimatedSliverList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final List<Key> oldKeys =
        oldWidget.items.map((T e) => oldWidget.keyingFunction(e)).toList();
    final List<Key> newKeys =
        widget.items.map((T e) => widget.keyingFunction(e)).toList();

    for (final DataDiffUpdate<Key> update in calculateListDiff<Key>(
      oldKeys,
      newKeys,
      detectMoves: false,
    ).getUpdatesWithData()) {
      if (update is DataInsert<Key>) {
        _listKey.currentState!.insertItem(
          update.position,
          duration: widget.insertDuration,
        );
      } else if (update is DataRemove<Key>) {
        _listKey.currentState!.removeItem(
          update.position,
          (BuildContext context, Animation<double> animation) =>
              oldWidget.itemBuilder(
                  context, oldWidget.items[update.position], animation),
          duration: widget.removeDuration,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) => SliverAnimatedList(
        key: _listKey,
        initialItemCount: widget.items.length,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) =>
                widget.itemBuilder(context, widget.items[index], animation),
      );
}
