// import 'package:sosedifedi/constants.dart';
// import 'package:sosedifedi/generated/locale_keys.g.dart';
// import 'package:sosedifedi/utils/utils.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' as dialog show showDialog;
// import 'package:flutter_picker/Picker.dart';
//
// class TimePicker extends FormField<DateTime> {
//   TimePicker({
//     Key? key,
//     required this.onTimeChanged,
//     FormFieldSetter<DateTime>? onSaved,
//     FormFieldValidator<DateTime>? validator,
//
//     ///If [null] then [time] or current date
//     DateTime? initialValue,
//     DateTime? firstDate,
//     DateTime? lastDate,
//     AutovalidateMode? autoValidateMade,
//     this.controller,
//   }) : super(
//             key: key,
//             onSaved: onSaved,
//             validator: validator,
//             initialValue: initialValue,
//             autovalidateMode: autoValidateMade,
//             builder: (field) {
//               final _TimePickerState state = field as _TimePickerState;
//               final inputTextStyle =
//                   Theme.of(state.context).textTheme.bodyLarge?.copyWith(
//                         color: kGreyDark,
//                       );
//               return GestureDetector(
//                 onTap: () {
//                   CustomPickerWidget(
//                       adapter: DateTimePickerAdapter(
//                         customColumnType: [3, 4],
//                         minValue: firstDate ?? DateTime.now(),
//                         value: state.value,
//                         maxValue: lastDate ??
//                             DateTime.now().add(
//                               const Duration(
//                                 days: 365,
//                               ),
//                             ),
//                       ),
//                       onConfirm: (Picker picker, List value) {
//                         final date =
//                             (picker.adapter as DateTimePickerAdapter).value;
//                         state.didChange(date);
//                       }).showDialog(state.context);
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             alignment: Alignment.center,
//                             padding: const EdgeInsets.symmetric(vertical: 15.0),
//                             child: Text(
//                               state.value?.hour.toString().padLeft(2, '0') ??
//                                   '',
//                               style: inputTextStyle,
//                             ),
//                             decoration: state.hasError
//                                 ? state.errorDecoration
//                                 : state.decoration,
//                           ),
//                         ),
//                         Expanded(
//                           child: Center(
//                             child: Text(
//                               ':',
//                               style: inputTextStyle,
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             alignment: Alignment.center,
//                             padding: const EdgeInsets.symmetric(vertical: 15.0),
//                             child: Text(
//                               state.value?.minute.toString().padLeft(2, '0') ??
//                                   '',
//                               style: inputTextStyle,
//                             ),
//                             decoration: state.hasError
//                                 ? state.errorDecoration
//                                 : state.decoration,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: kPadding,
//                         ),
//                         const Expanded(
//                           flex: 5,
//                           child: SizedBox(),
//                         ),
//                         state._buildCorrectIcon(
//                             show: state.value != null && !state.hasError),
//                       ],
//                     ),
//                     if (state.hasError && state.errorText != null) ...[
//                       const SizedBox(
//                         height: 8.0,
//                       ),
//                       Text(
//                         state.errorText!,
//                         style: Theme.of(state.context)
//                             .inputDecorationTheme
//                             .errorStyle,
//                       ),
//                     ]
//                   ],
//                 ),
//               );
//             });
//   final void Function(DateTime? date) onTimeChanged;
//   final DateTimeController? controller;
//
//   @override
//   FormFieldState<DateTime> createState() => _TimePickerState();
// }
//
// class _TimePickerState extends FormFieldState<DateTime> {
//   RestorableDateTimeController? _controller;
//
//   DateTimeController get _effectiveController =>
//       widget.controller ?? _controller!.value;
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
//   TimePicker get widget => super.widget as TimePicker;
//
//   @override
//   didChange(DateTime? value) {
//     super.didChange(value);
//     widget.onTimeChanged(value);
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
// }
//
// class CustomPickerWidget extends Picker {
//   CustomPickerWidget({
//     required PickerAdapter adapter,
//     double height = 100.0,
//     bool hideHeader = true,
//     double squeeze = 0.95,
//     double diameterRatio = 1.5,
//     bool looping = false,
//     TextStyle? textStyle,
//     PickerConfirmCallback? onConfirm,
//   }) : super(
//           adapter: adapter,
//           height: height,
//           hideHeader: hideHeader,
//           squeeze: squeeze,
//           diameterRatio: diameterRatio,
//           looping: looping,
//           delimiter: [
//             PickerDelimiter(
//               child: const SizedBox(
//                 width: 20.0,
//               ),
//             )
//           ],
//           itemExtent: 36.0,
//           textStyle: textStyle,
//           selectionOverlay: Container(
//             decoration: const BoxDecoration(
//               border: Border(
//                 top: BorderSide(width: 2.0),
//                 bottom: BorderSide(width: 2.0),
//               ),
//             ),
//           ),
//           onConfirm: onConfirm,
//         );
//
//   @override
//   Future<List<int>?> showDialog(BuildContext context,
//       {bool barrierDismissible = true,
//       Color? backgroundColor,
//       PickerWidgetBuilder? builder,
//       Key? key}) {
//     return dialog.showDialog<List<int>>(
//         context: context,
//         barrierDismissible: barrierDismissible,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             key: const Key('picker-dialog'),
//             title: Text(context.tr(LocaleKeys.chooseTime)),
//             backgroundColor: backgroundColor,
//             actions: [
//               TextButton(
//                   onPressed: () async {
//                     if (onConfirmBefore != null &&
//                         !(await onConfirmBefore!(this, selecteds))) {
//                       return; // Cancel;
//                     }
//                     Navigator.pop<List<int>>(context, selecteds);
//                     onConfirm!(this, selecteds);
//                   },
//                   child: Text(context.tr(LocaleKeys.ok))),
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop<List<int>>(context, null);
//                     if (onCancel != null) {
//                       onCancel!();
//                     }
//                   },
//                   child: Text(context.tr(LocaleKeys.cancel)))
//             ],
//             content:
//                 builder == null ? makePicker() : builder(context, makePicker()),
//           );
//         });
//   }
// }
