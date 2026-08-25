import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnboardingTooltip extends StatelessWidget {
  const OnboardingTooltip({
    super.key,
    required this.title,
    this.onPressedNext,
    this.onPressedSkip,
    this.width = 250.0,
    this.nextLabel,
    this.skipLabel,
    this.buttonsAlignment = MainAxisAlignment.end,
  });

  final Widget title;
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;
  final double width;

  final Widget? nextLabel;
  final Widget? skipLabel;

  final MainAxisAlignment buttonsAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
        type: MaterialType.transparency,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title,
            SeparatedRow(
              mainAxisAlignment: buttonsAlignment,
              separator: const SizedBox(
                width: AppInsets.padding16,
              ),
              children: [
                if (onPressedSkip != null)
                  _SkipTooltipButton(
                    label: skipLabel,
                    onPressed: onPressedSkip,
                  ),
                if (onPressedNext != null)
                  _NextTooltipButton(
                    label: nextLabel,
                    onPressed: onPressedNext,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SkipTooltipButton extends StatelessWidget {
  const _SkipTooltipButton({
    super.key,
    this.onPressed,
    this.label,
  });

  final VoidCallback? onPressed;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.titleSmall ?? const TextStyle();

    textStyle = textStyle.copyWith(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
        ),
        child: DefaultTextStyle(
          style: textStyle,
          child: label ?? Text(context.tr(LocaleKeys.onboarding_skip)),
        ),
      ),
    );
  }
}

class _NextTooltipButton extends StatelessWidget {
  const _NextTooltipButton({
    super.key,
    this.onPressed,
    this.label,
  });

  final VoidCallback? onPressed;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.titleSmall ?? const TextStyle();

    textStyle = textStyle.copyWith(
      color: Colors.white,
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
        ),
        child: DefaultTextStyle(
          style: textStyle,
          child: label ??
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(context.tr(LocaleKeys.onboarding_next)),
                  const Icon(
                    DerevenkaDobrenkaIcons.arrowRight,
                    color: Colors.white,
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
