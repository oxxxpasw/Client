import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:flutter/material.dart';

class HiddenContent extends StatefulWidget {
  const HiddenContent({
    super.key,
    required this.title,
    required this.child,
    this.controller,
  });

  final Widget title;
  final Widget child;
  final HiddenContentController? controller;

  @override
  State<HiddenContent> createState() => _HiddenContentState();
}

class _HiddenContentState extends State<HiddenContent> {
  late final HiddenContentController _effectiveController;

  @override
  void initState() {
    _effectiveController = widget.controller ?? HiddenContentController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: _effectiveController.toggle,
          title: widget.title,
          contentPadding: EdgeInsets.zero,
          trailing: ListenableBuilder(
            listenable: _effectiveController,
            builder: (context, child) {
              if (_effectiveController.isOpen) {
                return const Icon(CustomICons.chevronBigUp);
              }
              return const Icon(CustomICons.chevronBigDown);
            },
          ),
        ),
        ListenableBuilder(
          listenable: _effectiveController,
          builder: (context, child) {
            return Visibility(
              visible: _effectiveController.isOpen,
              maintainState: true,
              child: child!,
            );
          },
          child: widget.child,
        )
      ],
    );
  }
}

class HiddenContentController extends ChangeNotifier {
  HiddenContentController({bool initial = false}) : _isOpen = initial;

  bool _isOpen;

  bool get isOpen => _isOpen;

  void open() {
    _isOpen = true;
    notifyListeners();
  }

  void close() {
    _isOpen = false;
    notifyListeners();
  }

  void toggle() {
    _isOpen = !_isOpen;
    notifyListeners();
  }
}
