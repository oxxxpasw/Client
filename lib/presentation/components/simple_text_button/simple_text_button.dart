import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  const SimpleTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      child: GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: padding,
          child: DefaultTextStyle.merge(
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
            textAlign: TextAlign.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
