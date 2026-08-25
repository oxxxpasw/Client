// import 'package:sosedifedi/constants.dart';
// import 'package:sosedifedi/generated/locale_keys.g.dart';
// import 'package:sosedifedi/utils/utils.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
//
// class DatePickerWidget extends FormField<DateTime> {
//   DatePickerWidget({
//     Key? key,
//     required this.onDateChanged,
//     DateTime? firstDate,
//     DateTime? lastDate,
//     FormFieldSetter<DateTime>? onSaved,
//     FormFieldValidator<DateTime>? validator,
//
//     ///If [null] then [date] or current date
//     DateTime? initialValue,
//     this.focusNode,
//     AutovalidateMode? autoValidateMade,
//     this.controller,
//   }) : super(
//             key: key,
//             onSaved: onSaved,
//             validator: validator,
//             initialValue: initialValue,
//             autovalidateMode: autoValidateMade,
//             builder: (field) {
//               final _DatePickerState state = field as _DatePickerState;
//               final date = field.value;
//               final formatDate = date != null
//                   ? DateFormat('dd/MMMM/yyyy', 'ru').format(date).split('/')
//                   : ['', '', ''];
//               final inputTextStyle =
//                   Theme.of(state.context).textTheme.bodyLarge?.copyWith(
//                         color: kGreyDark,
//                       );
//               return Focus(
//                 focusNode: state._effectiveFocusNode,
//                 child: GestureDetector(
//                   onTap: () {
//                     if (!state._effectiveFocusNode.hasFocus) {
//                       state._effectiveFocusNode.requestFocus();
//                     }
//                     DatePicker.showSimpleDatePicker(
//                       state.context,
//                       firstDate: firstDate,
//                       initialDate: date,
//                       lastDate: lastDate,
//                       dateFormat: "dd-MMMM-yyyy",
//                       locale: DateTimePickerLocale.ru,
//                       titleText: state.context.tr(LocaleKeys.chooseDate),
//                       confirmText: state.context.tr(LocaleKeys.ok),
//                       cancelText: state.context.tr(LocaleKeys.cancel),
//                     ).then((value) {
//                       if (value != null) {
//                         state.didChange(DateTime(
//                           value.year,
//                           value.month,
//                           value.day,
//                           date?.hour ?? 0,
//                           date?.minute ?? 0,
//                         ));
//                       }
//                     });
//                   },
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           const Expanded(
//                             child: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Icon(
//                                 CupertinoIcons.calendar,
//                                 color: kGreyDark,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: kPadding,
//                           ),
//                           Expanded(
//                             child: Container(
//                               alignment: Alignment.center,
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 15.0),
//                               child: Text(
//                                 formatDate[0],
//                                 style: inputTextStyle,
//                               ),
//                               decoration: state.hasError
//                                   ? state.errorDecoration
//                                   : state.decoration,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: kPadding,
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Container(
//                               alignment: Alignment.center,
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 15.0),
//                               child: Text(
//                                 formatDate[1],
//                                 style: inputTextStyle,
//                               ),
//                               decoration: state.hasError
//                                   ? state.errorDecoration
//                                   : state.decoration,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: kPadding,
//                           ),
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               alignment: Alignment.center,
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 15.0),
//                               child: Text(
//                                 formatDate[2],
//                                 style: inputTextStyle,
//                               ),
//                               decoration: state.hasError
//                                   ? state.errorDecoration
//                                   : state.decoration,
//                             ),
//                           ),
//                           state._buildCorrectIcon(
//                               show: state.value != null && !state.hasError),
//                         ],
//                       ),
//                       if (state.hasError && state.errorText != null) ...[
//                         const SizedBox(
//                           height: 8.0,
//                         ),
//                         Text(
//                           state.errorText!,
//                           style: Theme.of(state.context)
//                               .inputDecorationTheme
//                               .errorStyle,
//                         ),
//                       ]
//                     ],
//                   ),
//                 ),
//               );
//             });
//   final void Function(DateTime? date) onDateChanged;
//   final DateTimeController? controller;
//   final FocusNode? focusNode;
//
//   @override
//   FormFieldState<DateTime> createState() => _DatePickerState();
// }
//
// class _DatePickerState extends FormFieldState<DateTime> {
//   RestorableDateTimeController? _controller;
//
//   DateTimeController get _effectiveController =>
//       widget.controller ?? _controller!.value;
//
//   FocusNode? _focusNode;
//   FocusNode get _effectiveFocusNode =>
//       widget.focusNode ?? (_focusNode ??= FocusNode());
//
//   final decoration = const BoxDecoration(
//     border: Border(
//       bottom: BorderSide(
//         color: kInputBorderColor,
//         width: 1,
//       ),
//     ),
//   );
//
//   final errorDecoration = const BoxDecoration(
//     border: Border(
//       bottom: BorderSide(
//         color: kError,
//         width: 1,
//       ),
//     ),
//   );
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.controller == null) {
//       _createLocalController(widget.initialValue);
//     } else {
//       widget.controller!.addListener(_handleControllerChanged);
//     }
//   }
//
//   void _handleControllerChanged() {
//     if (_effectiveController.value != value) {
//       didChange(_effectiveController.value);
//     }
//   }
//
//   void _createLocalController([DateTime? value]) {
//     assert(_controller == null);
//     _controller = RestorableDateTimeController(value);
//     if (!restorePending) {
//       _registerController();
//     }
//   }
//
//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     super.restoreState(oldBucket, initialRestore);
//     if (_controller != null) {
//       _registerController();
//     }
//     setValue(_effectiveController.value);
//   }
//
//   void _registerController() {
//     assert(_controller != null);
//     registerForRestoration(_controller!, 'controller');
//   }
//
//   @override
//   DatePickerWidget get widget => super.widget as DatePickerWidget;
//
//   @override
//   didChange(DateTime? value) {
//     super.didChange(value);
//     widget.onDateChanged(value);
//   }
//
//   Widget _buildCorrectIcon({bool show = false}) {
//     return Expanded(
//       child: Opacity(
//         opacity: show ? 1 : 0,
//         child: const Align(
//           alignment: Alignment.centerRight,
//           child: Icon(
//             CupertinoIcons.checkmark,
//             color: kCorrect,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _focusNode?.dispose();
//     _controller?.dispose();
//     super.dispose();
//   }
// }
