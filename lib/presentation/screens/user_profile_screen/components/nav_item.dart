import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.title,
    this.onPressed,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.subtitle,
    this.subtitleStyle,
    this.padding = const EdgeInsets.symmetric(
      vertical: 0,
      horizontal: AppInsets.padding16,
    ),
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final TextStyle? subtitleStyle;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final effectiveBackgroundColor =
        backgroundColor ?? theme.colorScheme.surface;
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onSurface;

    final titleTextStyle =
        textStyle ?? theme.textTheme.titleMedium ?? const TextStyle();

    final subtitleTextStyle =
        subtitleStyle ?? theme.textTheme.labelSmall ?? const TextStyle();

    return ListTile(
      contentPadding: padding,
      leading: leading,
      trailing: trailing,
      onTap: onPressed,
      tileColor: effectiveBackgroundColor,
      title: title,
      titleTextStyle: titleTextStyle.copyWith(
        color: effectiveForegroundColor,
      ),
      subtitle: subtitle != null
          ? DefaultTextStyle.merge(
              style: TextStyle(
                color: theme.colorScheme.primary,
              ),
              child: subtitle!,
            )
          : null,
      subtitleTextStyle: subtitleTextStyle,
      iconColor: effectiveForegroundColor,
    );
  }
}
