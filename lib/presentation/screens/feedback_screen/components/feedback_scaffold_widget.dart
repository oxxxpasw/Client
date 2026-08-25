import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';

class FeedbackScaffoldWidget extends StatelessWidget {
  const FeedbackScaffoldWidget({
    super.key,
    required this.child,
    this.action,
  });

  final Widget child;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(LocaleKeys.feedbackScreen_title.tr(context: context)),
      ),
      body: Theme(
        data: _getTheme(context),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: child),
              if (action != null) action!,
            ],
          ),
        ),
      ),
    );
  }

  ThemeData _getTheme(BuildContext context) {
    final theme = Theme.of(context);
    final inputTheme = theme.inputDecorationTheme;

    final colorScheme = theme.colorScheme;

    return theme.copyWith(
      inputDecorationTheme: inputTheme.copyWith(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: inputTheme.hintStyle?.copyWith(
          color: colorScheme.primary,
        ),
      ),
    );
  }
}
