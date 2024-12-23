import 'package:intl/intl.dart';

extension AppExtentionDouble on double? {
  String toCurrency({
    bool withSymbol = true,
    bool withSign = false,
    bool minus = false,
  }) {
    // Prepare formatter and result
    final f = NumberFormat.decimalPattern('id');
    String result = '';

    // Add sign
    if (withSign) {
      if ((this ?? 0) < 0) {
        result += '-';
      } else if ((this ?? 0) > 0) {
        result += '+';
      }
    }

    // If negative
    if (minus) {
      result += "-";
    }

    // Add symbol
    if (withSymbol) {
      result += '${'Rp'} '; // add space
    }

    // Add formatted money
    result += f.format(withSign ? (this?.abs() ?? 0) : (this ?? 0));

    return result;
  }
}
