import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class FieldOption<T> extends StatelessWidget {
  final Widget? child;
  final T value;

  const FieldOption({
    Key? key,
    required this.value,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child ?? Text(value.toString());
  }
}

class GroupedCustomCheckboxListTile<T> extends StatelessWidget {
  const GroupedCustomCheckboxListTile({
    Key? key,
    required this.options,
    this.title,
    this.value = const [],
    required this.onChanged,
    this.maxOptions,
    this.minOptions,
    this.background,
    this.activeBackground,
    this.trailingBuilder,
    this.disableLeading = false,
    this.separator,
    this.error,
    this.iconColor,
    this.selectedColor,
    this.textColor,
  }) : super(key: key);

  final String? title;
  final List<FieldOption<T>> options;
  final List<T> value;
  final void Function(List<T> value) onChanged;
  final int? maxOptions;
  final int? minOptions;
  final Color? background;
  final Color? activeBackground;
  final Color? textColor;
  final Color? selectedColor;
  final Color? iconColor;
  final Widget Function(BuildContext context, T value)? trailingBuilder;
  final bool disableLeading;
  final Widget? separator;
  final Widget? error;

  @override
  Widget build(BuildContext context) {
    final widgetList = <Widget>[];
    for (var i = 0; i < options.length; i++) {
      widgetList.add(item(context, i));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        if (error != null) ...[
          error!,
          if (separator != null) separator!,
        ],
        if (separator != null) separator!,
        Column(
          children: widgetList,
        )
      ],
    );
  }

  Widget item(BuildContext context, int index) {
    final option = options[index];
    final optionValue = option.value;
    final control = maxOptions == null || maxOptions! > 1
        ? Checkbox(
            value: value.contains(optionValue),
            onChanged: (selected) {
              selectItem(value, optionValue, selected);
            },
          )
        : Radio<T>(
            value: optionValue,
            groupValue: value.firstOrNull,
            onChanged: (item) {
              selectItem(value, optionValue);
            },
          );

    final tile = ListTile(
      onTap: () {
        selectItem(value, optionValue);
      },
      textColor: textColor,
      selectedColor: selectedColor,
      iconColor: iconColor,
      selected: value.contains(optionValue),
      tileColor: background,
      selectedTileColor: activeBackground,
      leading: !disableLeading ? control : null,
      title: option,
      trailing: trailingBuilder != null
          ? trailingBuilder!(context, optionValue)
          : null,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        tile,
        if (separator != null && index != options.length - 1) separator!,
      ],
    );
  }

  selectItem(List<T> value, T optionValue, [bool? selected]) {
    List<T> selectedListItems = List.of(value);
    selected ??= !selectedListItems.contains(optionValue);
    if (selected) {
      if (maxOptions != null && selectedListItems.length >= maxOptions!) {
        selectedListItems.removeAt(0);
      }
      selectedListItems.add(optionValue);
    } else {
      if (minOptions != null && selectedListItems.length <= minOptions!) {
        return;
      }
      selectedListItems.remove(optionValue);
    }
    onChanged(selectedListItems);
  }
}
