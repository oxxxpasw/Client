import 'package:intl/intl.dart';

class Currency {
  static String convertToPrice(String currencySymbol, double price) {
    return NumberFormat.currency(
      locale: 'ru_RU',
      symbol: currencySymbol,
      decimalDigits: price % 1 > 0 ? 2 : 0,
    ).format(price);
  }
}
