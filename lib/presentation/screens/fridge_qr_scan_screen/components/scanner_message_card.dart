import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class ScannerMessageCard extends StatelessWidget {
  const ScannerMessageCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      ),
      color: Theme.of(context).colorScheme.background,
      child: DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
        textAlign: TextAlign.center,
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Center(child: child),
        ),
      ),
    );
  }
}
