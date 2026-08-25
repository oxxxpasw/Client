import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    this.title,
    this.subtitle,
    this.trailing,
    this.onPressed,
    this.color,
    this.textColor,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  final Color? color;
  final Color? textColor;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? Theme.of(context).colorScheme.primary;
    final effectiveTextColor =
        textColor ?? Theme.of(context).colorScheme.onPrimary;

    final textStyle = Theme.of(context).textTheme.bodySmall?.copyWith(
          color: effectiveTextColor,
        );

    return Material(
      color: effectiveColor,
      textStyle: textStyle,
      borderRadius: BorderRadius.circular(
        AppBorderRadius.medium,
      ),
      child: IconTheme.merge(
        data: IconThemeData(
          color: effectiveTextColor,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
              vertical: AppInsets.padding24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null)
                        DefaultTextStyle.merge(
                          child: title!,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: effectiveTextColor,
                                  ),
                        ),
                      if (subtitle != null)
                        Padding(
                          padding:
                              const EdgeInsets.only(top: AppInsets.padding4),
                          child: subtitle!,
                        ),
                    ],
                  ),
                ),
                if (trailing != null)
                  Padding(
                    padding: const EdgeInsets.only(left: AppInsets.padding8),
                    child: DefaultTextStyle.merge(
                      child: trailing!,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: effectiveTextColor,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
