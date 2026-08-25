import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OnBoardingStartPage extends StatefulWidget {
  const OnBoardingStartPage({
    super.key,
    this.onPressedNext,
    this.onPressedSkip,
  });

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;

  @override
  State<OnBoardingStartPage> createState() => _OnBoardingStartPageState();
}

class _OnBoardingStartPageState extends State<OnBoardingStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding72,
            horizontal: AppInsets.padding16,
          ),
          child: Column(
            children: [
              Text(
                context.tr(LocaleKeys.onboarding_start_title),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Expanded(
                child: Center(
                  child: Image.asset('assets/images/onboarding_logo.png'),
                ),
              ),
              Text(
                context.tr(LocaleKeys.onboarding_start_text),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: AppInsets.padding32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _SkipTooltipButton(
                    onPressed: widget.onPressedSkip,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppInsets.padding16,
                    ),
                    child: _NextTooltipButton(
                      onPressed: widget.onPressedNext,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SkipTooltipButton extends StatelessWidget {
  const _SkipTooltipButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding16,
        ),
        child: Text(
          context.tr(LocaleKeys.onboarding_skip),
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ),
    );
  }
}

class _NextTooltipButton extends StatelessWidget {
  const _NextTooltipButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding16,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr(LocaleKeys.onboarding_next),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            Icon(
              DerevenkaDobrenkaIcons.arrowRight,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
