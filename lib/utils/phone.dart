import 'package:flutter/services.dart';

class PhoneMaskFormatter extends TextInputFormatter {
  PhoneMaskFormatter({required this.mask, this.replaceSymbol = '0'}) : super();

  final String mask;
  final String replaceSymbol;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final formattedText = _phoneFormat(newValue.text);
    return TextEditingValue(
        text: formattedText,
        composing: newValue.composing,
        selection: TextSelection(
          baseOffset: newValue.selection.baseOffset -
              newValue.text.length +
              formattedText.length,
          extentOffset: newValue.selection.extentOffset -
              newValue.text.length +
              formattedText.length,
        ));
  }

  String _phoneFormat(String phone) {
    final phoneNumbers = phone.replaceAll(RegExp(r'[^0-9]'), '');
    int index = 0;
    int next = 0;
    var newPhone = mask.substring(0).replaceAllMapped(replaceSymbol, (match) {
      if (index < phoneNumbers.length) {
        final val = phoneNumbers[index];
        index++;
        next = next < match.end ? match.end : next;
        return val;
      }
      return '#';
    });
    return newPhone.substring(0, next);
  }
}
