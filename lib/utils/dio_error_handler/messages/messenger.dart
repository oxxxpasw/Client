import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

import 'messages.dart';

abstract class Messenger {
  Messenger._();

  static void showMessage({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    messageType = MessageType.error,
  }) {
    if (messageType == MessageType.error) {
      message = message.replaceAll(RegExp(r'^Exception:|Exception'), '');
    }
    final style = _getMessageStyle(context, messageType);

    final padding = MediaQueryData.fromView(View.of(context)).padding;

    context.showToast(
      Row(
        spacing: AppInsets.padding8,
        children: [
          if (style.icon != null)
            Icon(
              style.icon!,
              color: style.iconColor ?? style.foregroundColor,
            ),
          Flexible(
            child: Text(
              message,
              style: TextStyle(
                color: style.foregroundColor,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: style.backgroundColor,
      duration: duration,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(
        left: AppInsets.padding16,
        right: AppInsets.padding16,
        bottom: AppInsets.padding16,
        top: padding.top + AppInsets.padding16,
      ),
    );
    HapticFeedback.mediumImpact();
  }

  static MessageStyle _getMessageStyle(
      BuildContext context, MessageType messageType) {
    final theme = Theme.of(context);

    final colors =
        theme.extension<CustomThemeExtension>()?.appColors ?? AppColors.base();

    switch (messageType) {
      case MessageType.success:
        return MessageStyle(
          icon: DerevenkaDobrenkaIcons.check,
          iconColor: colors.primary,
        );
      case MessageType.error:
        return MessageStyle(
          foregroundColor: colors.onError,
          backgroundColor: colors.error,
          icon: Icons.close,
        );
      case MessageType.warning:
        return MessageStyle();
      case MessageType.message:
        return MessageStyle();
    }
  }
}

class MessageStyle {
  MessageStyle({
    this.foregroundColor,
    this.backgroundColor,
    this.icon,
    this.iconColor,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? iconColor;
  final IconData? icon;
}
