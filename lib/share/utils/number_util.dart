import 'package:intl/intl.dart';

class NumberUtil {
  /// From number value to US currency format
  static String toUSCurrency(dynamic value) {
    final currencyFormat = NumberFormat.simpleCurrency(
      locale: 'en-US',
      decimalDigits: 0,
    );
    return currencyFormat.format(value);
  }
}
