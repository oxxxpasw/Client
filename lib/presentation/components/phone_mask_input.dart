// import 'package:sosedifedi/constants.dart';
// import 'package:sosedifedi/utils/phone.dart';
// import 'package:flutter/material.dart';
//
// class PhoneMaskInput extends StatefulWidget {
//   const PhoneMaskInput({
//     super.key,
//     required this.onChanged,
//     this.focusNode,
//   });
//
//   final void Function(String phone) onChanged;
//   final FocusNode? focusNode;
//
//   @override
//   State<PhoneMaskInput> createState() => _PhoneMaskInputState();
// }
//
// class _PhoneMaskInputState extends State<PhoneMaskInput> {
//   late final TextEditingController phoneController;
//   // late final InputPhoneService inputPhoneService;
//   int phoneLength = 0;
//   final mask = '(000) 000-00-00';
//
//   @override
//   void initState() {
//     super.initState();
//     phoneController = TextEditingController(text: '(');
//     phoneLength = phoneController.value.text.length;
//     phoneController.addListener(() {
//       setState(() {
//         final text = phoneController.value.text;
//         phoneLength = text.length;
//         widget.onChanged(
//           '+7' + phoneController.value.text.replaceAll(RegExp(r'[^0-9]'), ''),
//         );
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final textStyle = Theme.of(context).textTheme.headlineSmall!.copyWith(
//           color: kGreyDark,
//         );
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12.0),
//       decoration: const BoxDecoration(
//           border: Border(
//               bottom: BorderSide(
//         color: kInputBorderColor,
//         width: 1,
//       ))),
//       child: DefaultTextStyle(
//         style: textStyle,
//         child: Stack(
//           children: [
//             Positioned(
//               child: RichText(
//                 text: TextSpan(children: [
//                   TextSpan(
//                       text: phoneController.value.text,
//                       style: textStyle.copyWith()),
//                   TextSpan(
//                     text: mask.substring(
//                       phoneLength,
//                       mask.length,
//                     ),
//                     style: textStyle.copyWith(color: kGrey),
//                   )
//                 ]),
//               ),
//             ),
//             Positioned(
//               child: _buildTextField(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _buildTextField() {
//     final textStyle = Theme.of(context).textTheme.headlineSmall!.copyWith(
//           color: kGreyDark,
//         );
//     return TextFormField(
//       style: textStyle.copyWith(
//         color: Colors.transparent,
//       ),
//       scrollPadding: EdgeInsets.zero,
//       controller: phoneController,
//       cursorWidth: 1.0,
//       inputFormatters: [PhoneMaskFormatter(mask: mask)],
//       keyboardType: TextInputType.phone,
//       focusNode: widget.focusNode,
//       decoration: InputDecoration(
//         isCollapsed: true,
//         counterText: '',
//         hintStyle: textStyle.copyWith(color: kGrey),
//         border: InputBorder.none,
//         focusedBorder: InputBorder.none,
//         enabledBorder: InputBorder.none,
//         errorBorder: InputBorder.none,
//         disabledBorder: InputBorder.none,
//       ),
//     );
//   }
// }
