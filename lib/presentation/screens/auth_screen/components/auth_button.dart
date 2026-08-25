import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.isValid = true,
  });

  final VoidCallback onPressed;
  final bool isLoading;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    final enabled = isValid && !isLoading;

    final Widget child;

    if (isLoading) {
      child = Center(
        child: SizedBox(
          height: 20.0,
          width: 20.0,
          child: Builder(builder: (context) {
            final color = DefaultTextStyle.of(context).style.color;
            return CircularProgressIndicator.adaptive(
              strokeWidth: 2.0,
              valueColor: AlwaysStoppedAnimation<Color>(
                color ?? Theme.of(context).colorScheme.onPrimary,
              ),
            );
          }),
        ),
      );
    } else {
      child = Text(
        context.tr(LocaleKeys.auth_enter),
      );
    }

    return FilledButton.icon(
      onPressed: enabled ? onPressed : null,
      iconAlignment: IconAlignment.end,
      icon: isLoading
          ? null
          : const Icon(
              DerevenkaDobrenkaIcons.arrowRight2,
            ),
      label: SizedBox(
        width: double.infinity,
        child: child,
      ),
    );
  }
}
