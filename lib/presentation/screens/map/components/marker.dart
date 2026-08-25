// import 'dart:io';
// import 'dart:math';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:sosedifedi/data/models/point/point.dart' as point_model;
//
// class Marker extends StatelessWidget {
//   Marker({
//     required String key,
//     required this.coordinate,
//     required this.position,
//     required this.data,
//     required this.onPressed,
//     this.isSelected = false,
//   }) : super(key: Key(key));
//
//   final Point position;
//   final LatLng coordinate;
//   final point_model.Point data;
//   final bool isSelected;
//   final void Function(point_model.Point value) onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     var ratio = 1.0;
//     const _iconSize = 70.0;
//
//     if (!kIsWeb) {
//       ratio = Platform.isIOS ? 1.0 : MediaQuery.of(context).devicePixelRatio;
//     }
//
//     return Positioned(
//         left: position.x / ratio - _iconSize / 2,
//         top: position.y / ratio - _iconSize + 10,
//         child: GestureDetector(
//             onTap: () {
//               onPressed(data);
//             },
//             child: isSelected
//                 ? Image.asset(
//                     'assets/images/selected-marker.png',
//                     height: _iconSize,
//                     fit: BoxFit.contain,
//                   )
//                 : Image.asset(
//                     'assets/images/marker.png',
//                     height: _iconSize,
//                     fit: BoxFit.contain,
//                   )));
//   }
// }
