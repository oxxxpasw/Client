import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPhone extends StatelessWidget {
  const InputPhone({
    Key? key,
    TextEditingController? controller,
    this.style,
    this.decoration,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController? _controller;
  final InputDecoration? decoration;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      style: style,
      decoration: decoration,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9 \(\)\+\-]')),
      ],
    );
  }
}
