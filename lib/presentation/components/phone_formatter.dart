import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

class PhoneFormatter extends TextInputFormatter {
  PhoneFormatter() : super();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue;
    // final formattedText =
    //     FlutterLibphonenumber().formatNumberSync(newValue.text);
    // return TextEditingValue(
    //     text: formattedText,
    //     composing: newValue.composing,
    //     selection: TextSelection(
    //       baseOffset: newValue.selection.baseOffset -
    //           newValue.text.length +
    //           formattedText.length,
    //       extentOffset: newValue.selection.extentOffset -
    //           newValue.text.length +
    //           formattedText.length,
    //     ));
  }
}
