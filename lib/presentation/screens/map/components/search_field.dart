import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.onChanged,
  });

  final ValueChanged<String>? onChanged;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> with RestorationMixin {
  final _isOpen = RestorableBool(false);

  late final RestorableTextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = RestorableTextEditingController();
    _textEditingController.addListener(controllerListener);
  }

  @visibleForTesting
  void controllerListener() {
    widget.onChanged?.call(_textEditingController.value.text);
  }

  @override
  Widget build(BuildContext context) {
    if (!_isOpen.value) {
      return Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () {
            setState(() {
              _isOpen.value = !_isOpen.value;
            });
          },
          icon: const Icon(CustomICons.search),
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _textEditingController.value,
            autofocus: true,
            style: Theme.of(context).textTheme.bodyLarge,
            decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              isCollapsed: true,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            _textEditingController.value.clear();
          },
          icon: const Icon(
            CustomICons.closeBig,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  String? get restorationId => 'SearchFieldWidget';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_textEditingController, 'searchTextController');
    registerForRestoration(_isOpen, 'searchIsOpen');
  }
}
