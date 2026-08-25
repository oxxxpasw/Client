// import 'package:flutter/material.dart';
// import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
// import 'dart:math' as math;
// import 'package:vector_math/vector_math_64.dart' show Vector3;
//
// class MainBottomBar extends StatelessWidget {
//   const MainBottomBar({
//     super.key,
//     this.items,
//     this.padding,
//     this.color,
//     this.elevation,
//     this.shape,
//     required this.clipBehavior,
//     this.shadowColor,
//     this.height,
//   });
//
//   final List<MainBottomBarItem>? items;
//
//   final EdgeInsetsGeometry? padding;
//
//   final Color? color;
//
//   final double? elevation;
//
//   final NotchedShape? shape;
//
//   final Clip clipBehavior;
//
//   final Color? shadowColor;
//   final double? height;
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = BottomAppBarTheme.of(context);
//
//     final clipper = ShapeBorderClipper(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//     );
//     final double elevation = this.elevation ?? theme.elevation ?? 0.0;
//     final double? height = this.height ?? theme.height;
//     final Color color = this.color ?? theme.color ?? Colors.black;
//     final Color shadowColor =
//         this.shadowColor ?? theme.shadowColor ?? Colors.black;
//
//     final Widget child = SizedBox(
//       height: height,
//       child: Padding(
//         padding: padding ??
//             theme.padding ??
//             const EdgeInsets.all(AppInsets.padding16),
//         child: this.child,
//       ),
//     );
//
//     final Material material = Material(
//       type: MaterialType.transparency,
//       child: SafeArea(child: child),
//     );
//
//     return PhysicalShape(
//       clipper: clipper,
//       elevation: elevation,
//       shadowColor: shadowColor,
//       color: color,
//       clipBehavior: clipBehavior,
//       child: material,
//     );
//   }
// }
//
// class _MainBottomBarTile extends StatelessWidget {
//   const _MainBottomBarTile({
//     super.key,
//     required this.item,
//     required this.iconSize,
//     required this.animation,
//     this.onTap,
//     this.flex,
//     this.selected = false,
//     required this.selectedLabelStyle,
//     required this.unselectedLabelStyle,
//     required this.selectedIconTheme,
//     required this.unselectedIconTheme,
//     this.indexLabel,
//     required this.mouseCursor,
//     required this.enableFeedback,
//     required this.showLabels,
//   });
//
//   final BottomNavigationBarItem item;
//   final double iconSize;
//   final VoidCallback? onTap;
//   final int? flex;
//   final bool selected;
//   final IconThemeData? selectedIconTheme;
//   final IconThemeData? unselectedIconTheme;
//   final TextStyle selectedLabelStyle;
//   final TextStyle unselectedLabelStyle;
//   final String? indexLabel;
//   final bool showLabels;
//   final MouseCursor mouseCursor;
//   final bool enableFeedback;
//   final Animation<double> animation;
//   final ColorTween? labelColorTween;
//   final ColorTween? iconColorTween;
//
//   @override
//   Widget build(BuildContext context) {
//     final double selectedFontSize = selectedLabelStyle.fontSize!;
//
//     final double selectedIconSize = selectedIconTheme?.size ?? iconSize;
//     final double unselectedIconSize = unselectedIconTheme?.size ?? iconSize;
//
//     // The amount that the selected icon is bigger than the unselected icons,
//     // (or zero if the selected icon is not bigger than the unselected icons).
//     final double selectedIconDiff =
//         math.max(selectedIconSize - unselectedIconSize, 0);
//     // The amount that the unselected icons are bigger than the selected icon,
//     // (or zero if the unselected icons are not any bigger than the selected icon).
//     final double unselectedIconDiff =
//         math.max(unselectedIconSize - selectedIconSize, 0);
//
//     // The effective tool tip message to be shown on the BottomNavigationBarItem.
//     final String? effectiveTooltip = item.tooltip == '' ? null : item.tooltip;
//
//     double bottomPadding;
//     double topPadding;
//
//     if (showLabels) {
//       bottomPadding = selectedFontSize / 2.0 + unselectedIconDiff / 2.0;
//       topPadding = selectedFontSize / 2.0 + unselectedIconDiff / 2.0;
//     } else {
//       bottomPadding = unselectedIconDiff / 2.0;
//       topPadding = selectedFontSize + unselectedIconDiff / 2.0;
//     }
//
//     Widget result = InkResponse(
//       onTap: onTap,
//       mouseCursor: mouseCursor,
//       enableFeedback: enableFeedback,
//       child: Padding(
//         padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
//         child: _Tile(
//           icon: _TileIcon(
//             colorTween: iconColorTween!,
//             animation: animation,
//             iconSize: iconSize,
//             selected: selected,
//             item: item,
//             selectedIconTheme: selectedIconTheme,
//             unselectedIconTheme: unselectedIconTheme,
//           ),
//           label: _Label(
//             colorTween: labelColorTween!,
//             animation: animation,
//             item: item,
//             selectedLabelStyle: selectedLabelStyle,
//             unselectedLabelStyle: unselectedLabelStyle,
//             showLabels: showLabels,
//           ),
//         ),
//       ),
//     );
//
//     if (effectiveTooltip != null) {
//       result = Tooltip(
//         message: effectiveTooltip,
//         preferBelow: false,
//         verticalOffset: selectedIconSize + selectedFontSize,
//         excludeFromSemantics: true,
//         child: result,
//       );
//     }
//
//     result = Semantics(
//       selected: selected,
//       container: true,
//       child: Stack(
//         children: <Widget>[
//           result,
//           Semantics(
//             label: indexLabel,
//           ),
//         ],
//       ),
//     );
//
//     return Expanded(
//       flex: flex ?? 1,
//       child: result,
//     );
//   }
// }
//
// class _Tile extends StatelessWidget {
//   const _Tile({required this.icon, required this.label});
//
//   final Widget icon;
//   final Widget label;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[icon, label],
//     );
//   }
// }
//
// class _TileIcon extends StatelessWidget {
//   const _TileIcon({
//     required this.colorTween,
//     required this.animation,
//     required this.iconSize,
//     required this.selected,
//     required this.item,
//     required this.selectedIconTheme,
//     required this.unselectedIconTheme,
//   });
//
//   final ColorTween colorTween;
//   final Animation<double> animation;
//   final double iconSize;
//   final bool selected;
//   final BottomNavigationBarItem item;
//   final IconThemeData? selectedIconTheme;
//   final IconThemeData? unselectedIconTheme;
//
//   @override
//   Widget build(BuildContext context) {
//     final Color? iconColor = colorTween.evaluate(animation);
//     final IconThemeData defaultIconTheme = IconThemeData(
//       color: iconColor,
//       size: iconSize,
//     );
//     final IconThemeData iconThemeData = IconThemeData.lerp(
//       defaultIconTheme.merge(unselectedIconTheme),
//       defaultIconTheme.merge(selectedIconTheme),
//       animation.value,
//     );
//
//     return Align(
//       alignment: Alignment.topCenter,
//       heightFactor: 1.0,
//       child: IconTheme(
//         data: iconThemeData,
//         child: selected ? item.activeIcon : item.icon,
//       ),
//     );
//   }
// }
//
// class _Label extends StatelessWidget {
//   const _Label({
//     required this.colorTween,
//     required this.animation,
//     required this.item,
//     required this.selectedLabelStyle,
//     required this.unselectedLabelStyle,
//     required this.showLabels,
//   });
//
//   final ColorTween colorTween;
//   final Animation<double> animation;
//   final BottomNavigationBarItem item;
//   final TextStyle selectedLabelStyle;
//   final TextStyle unselectedLabelStyle;
//   final bool showLabels;
//
//   @override
//   Widget build(BuildContext context) {
//     final double? selectedFontSize = selectedLabelStyle.fontSize;
//     final double? unselectedFontSize = unselectedLabelStyle.fontSize;
//
//     final TextStyle customStyle = TextStyle.lerp(
//       unselectedLabelStyle,
//       selectedLabelStyle,
//       animation.value,
//     )!;
//     Widget text = DefaultTextStyle.merge(
//       style: customStyle.copyWith(
//         fontSize: selectedFontSize,
//         color: colorTween.evaluate(animation),
//       ),
//       // The font size should grow here when active, but because of the way
//       // font rendering works, it doesn't grow smoothly if we just animate
//       // the font size, so we use a transform instead.
//       child: Transform(
//         transform: Matrix4.diagonal3(
//           Vector3.all(
//             Tween<double>(
//               begin: unselectedFontSize! / selectedFontSize!,
//               end: 1.0,
//             ).evaluate(animation),
//           ),
//         ),
//         alignment: Alignment.bottomCenter,
//         child: Text(item.label!),
//       ),
//     );
//
//     if (!showLabels) {
//       text = Visibility.maintain(
//         visible: false,
//         child: text,
//       );
//     }
//
//     text = Align(
//       alignment: Alignment.bottomCenter,
//       heightFactor: 1.0,
//       child: text,
//     );
//
//     if (item.label != null) {
//       text = MediaQuery.withClampedTextScaling(
//         maxScaleFactor: 1.0,
//         child: text,
//       );
//     }
//
//     return text;
//   }
// }
//
// class MainBottomBarItem {
//   const MainBottomBarItem({
//     this.key,
//     required this.icon,
//     this.label,
//     Widget? activeIcon,
//     this.backgroundColor,
//     this.tooltip,
//   }) : activeIcon = activeIcon ?? icon;
//
//   final Key? key;
//
//   final Widget icon;
//
//   final Widget activeIcon;
//
//   final String? label;
//
//   final Color? backgroundColor;
//
//   final String? tooltip;
// }
