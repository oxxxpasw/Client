import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.children,
    this.style,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
  }) : super(key: key);

  final List<Widget> children;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: style ?? Theme.of(context).textButtonTheme.style,
      child: Row(mainAxisAlignment: mainAxisAlignment, children: children),
    );
  }
}
