// import 'package:auto_route/auto_route.dart';
// import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// class PrimaryAutoLeadingButton extends StatelessWidget {
//   const PrimaryAutoLeadingButton({
//     super.key,
//     this.backgroundColor,
//     this.iconColor,
//   });
//
//   final Color? backgroundColor;
//   final Color? iconColor;
//
//   @override
//   Widget build(BuildContext context) {
//     final effectiveBackground =
//         backgroundColor ?? Theme.of(context).colorScheme.primary;
//     final effectiveIconColor =
//         iconColor ?? Theme.of(context).colorScheme.onPrimary;
//     return AutoLeadingButton(
//       builder: (context, type, callback) {
//         Widget? child;
//         if (type.isBack) {
//           child = BackButton(
//             onPressed: callback,
//             color: effectiveIconColor,
//           );
//         }
//         if (type.isClose) {
//           child = CloseButton(
//             onPressed: callback,
//             color: effectiveIconColor,
//           );
//         }
//         if (child == null) {
//           return const SizedBox.shrink();
//         }
//         return Padding(
//           padding: const EdgeInsets.all(AppInsets.padding8),
//           child: Container(
//             decoration: ShapeDecoration(
//               shape: const StadiumBorder(),
//               color: effectiveBackground,
//             ),
//             child: Padding(
//               padding: defaultTargetPlatform == TargetPlatform.iOS
//                   ? const EdgeInsets.only(left: 4.0)
//                   : EdgeInsets.zero,
//               child: child,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class CloseButtonIcon extends StatelessWidget {
//   /// Creates an icon that shows the appropriate "close" image for
//   /// the current platform (as obtained from the [Theme]).
//   const CloseButtonIcon({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return _ActionIcon(
//       iconBuilderCallback: (ActionIconThemeData? actionIconTheme) {
//         return actionIconTheme?.closeButtonIconBuilder;
//       },
//       getIcon: (BuildContext context) => Icons.close,
//       getAndroidSemanticsLabel: (MaterialLocalizations materialLocalization) {
//         return materialLocalization.closeButtonTooltip;
//       },
//     );
//   }
// }
//
// typedef _ActionIconBuilderCallback = WidgetBuilder? Function(
//     ActionIconThemeData? actionIconTheme);
// typedef _ActionIconDataCallback = IconData Function(BuildContext context);
// typedef _AndroidSemanticsLabelCallback = String Function(
//     MaterialLocalizations materialLocalization);
//
// class _ActionIcon extends StatelessWidget {
//   const _ActionIcon({
//     required this.iconBuilderCallback,
//     required this.getIcon,
//     required this.getAndroidSemanticsLabel,
//   });
//
//   final _ActionIconBuilderCallback iconBuilderCallback;
//   final _ActionIconDataCallback getIcon;
//   final _AndroidSemanticsLabelCallback getAndroidSemanticsLabel;
//
//   @override
//   Widget build(BuildContext context) {
//     final ActionIconThemeData? actionIconTheme = ActionIconTheme.of(context);
//     final WidgetBuilder? iconBuilder = iconBuilderCallback(actionIconTheme);
//     if (iconBuilder != null) {
//       return iconBuilder(context);
//     }
//
//     final IconData data = getIcon(context);
//     final String? semanticsLabel;
//     // This can't use the platform from Theme because it is the Android OS that
//     // expects the duplicated tooltip and label.
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         semanticsLabel =
//             getAndroidSemanticsLabel(MaterialLocalizations.of(context));
//       case TargetPlatform.fuchsia:
//       case TargetPlatform.linux:
//       case TargetPlatform.windows:
//       case TargetPlatform.iOS:
//       case TargetPlatform.macOS:
//         semanticsLabel = null;
//     }
//
//     return Icon(data, semanticLabel: semanticsLabel);
//   }
// }
