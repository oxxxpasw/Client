import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/custom_leading_button/custom_leading_button.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

const _kCustomAppBarLeadingWidth = 72.0;

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    super.automaticallyImplyLeading = true,
    super.title,
    super.flexibleSpace,
    super.bottom,
    super.elevation,
    super.scrolledUnderElevation,
    super.notificationPredicate = defaultScrollNotificationPredicate,
    super.shadowColor,
    super.surfaceTintColor,
    super.shape,
    super.backgroundColor,
    super.foregroundColor,
    super.iconTheme,
    super.actionsIconTheme,
    super.primary = true,
    super.centerTitle,
    super.excludeHeaderSemantics = false,
    super.titleSpacing,
    super.toolbarOpacity = 1.0,
    super.bottomOpacity = 1.0,
    super.toolbarHeight,
    super.leadingWidth = _kCustomAppBarLeadingWidth,
    super.toolbarTextStyle,
    super.titleTextStyle,
    super.systemOverlayStyle,
    super.forceMaterialTransparency = false,
    super.clipBehavior,
    Widget? leading,
    List<Widget>? actions,
    double startEndPadding = AppInsets.padding8,
    Color? leadingBackgroundColor,
  }) : super(
          leading: leading != null || automaticallyImplyLeading
              ? Padding(
                  padding: EdgeInsets.only(left: startEndPadding),
                  child: leading ??
                      CustomLeadingButton(
                        backgroundColor: leadingBackgroundColor,
                      ),
                )
              : null,
          actions: actions != null && actions.isNotEmpty
              ? [
                  ...actions.sublist(0, actions.length - 1),
                  Padding(
                    padding: EdgeInsets.only(right: startEndPadding),
                    child: actions[actions.length - 1],
                  ),
                ]
              : null,
        );
}

class SliverCustomAppBar extends SliverAppBar {
  SliverCustomAppBar({
    super.key,
    super.automaticallyImplyLeading = true,
    super.title,
    super.flexibleSpace,
    super.bottom,
    super.elevation,
    super.scrolledUnderElevation,
    super.shadowColor,
    super.surfaceTintColor,
    super.forceElevated = false,
    super.backgroundColor,
    super.foregroundColor,
    super.iconTheme,
    super.actionsIconTheme,
    super.primary = true,
    super.centerTitle,
    super.excludeHeaderSemantics = false,
    super.titleSpacing,
    super.collapsedHeight,
    super.expandedHeight,
    super.floating = false,
    super.pinned = false,
    super.snap = false,
    super.stretch = false,
    super.stretchTriggerOffset = 100.0,
    super.onStretchTrigger,
    super.shape,
    super.toolbarHeight = kToolbarHeight,
    super.leadingWidth = _kCustomAppBarLeadingWidth,
    super.toolbarTextStyle,
    super.titleTextStyle,
    super.systemOverlayStyle,
    super.forceMaterialTransparency = false,
    super.clipBehavior,
    Widget? leading,
    List<Widget>? actions,
    double startEndPadding = AppInsets.padding8,
  }) : super(
          leading: leading != null || automaticallyImplyLeading
              ? Padding(
                  padding: EdgeInsets.only(left: startEndPadding),
                  child: leading ?? const CustomLeadingButton(),
                )
              : null,
          actions: actions != null && actions.isNotEmpty
              ? [
                  ...actions.sublist(0, actions.length - 1),
                  Padding(
                    padding: EdgeInsets.only(right: startEndPadding),
                    child: actions[actions.length - 1],
                  ),
                ]
              : null,
        );
}
