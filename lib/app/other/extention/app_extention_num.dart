part of 'extention_export.dart';

extension AppExtentionNum on num {
  /// To currency formatter
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
      if (this < 0) {
        result += '-';
      } else if (this > 0) {
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
    result += f.format(withSign ? abs() : this);

    return result;
  }

  /// To numeric formatter
  String toNumeric() {
    var f = NumberFormat("#,###");
    return f.format(this);
  }

  /// To divider formatter
  String toDivider() {
    var f = NumberFormat.decimalPattern('currency_locale');
    return f.format(this).toString();
  }

  /// To short currency formatter
  String toShortCurrency() {
    var v = floor();
    var f = NumberFormat.compact(locale: 'currency_locale');
    return '${'currency_code'}${f.format(v)}';
  }

  /// To duration formatter
  String toDuration({bool isSecond = false}) {
    var dur = isSecond ? Duration(seconds: toInt()) : Duration(milliseconds: toInt());
    var days = Duration(days: dur.inDays);
    var hours = dur - days;
    var minutes = hours - Duration(hours: hours.inHours);
    var seconds = minutes - Duration(minutes: minutes.inMinutes);

    String result = '';
    if (days.inDays > 0) result += '${days.inDays} ${'day'}';
    if (days.inDays > 0 && hours.inHours > 0) result += ' ';
    if (hours.inHours > 0) result += '${hours.inHours} ${'hour'}';
    if (hours.inHours > 0 && minutes.inMinutes > 0) result += ' ';
    if (minutes.inMinutes > 0) result += '${minutes.inMinutes} ${'minute'} ';
    if (seconds.inSeconds > 0) result += '${seconds.inSeconds} ${'second'}';

    return result;
  }

  /// To currency formatter
  String toCurrencyNotCode() {
    var f = NumberFormat.decimalPattern('currency_locale');
    return f.format(this).toString();
  }

  /// To precision formatter
  num toPrecision({int decimal = 2}) {
    String value = toStringAsFixed(decimal).replaceAll('.00', '').replaceAll('.0', '');
    // double a = 0.0.toPrecision(decimal);

    return num.parse(value);
  }

  /// To millisecond formatter
  String toMillisStringDate() {
    return DateTime.fromMillisecondsSinceEpoch(toInt()).formatLocal("dd/MM/yyyy kk:mm");
  }

  /// To millisecond formatter
  String toMillisStringDateDay() {
    return DateTime.fromMillisecondsSinceEpoch(toInt()).formatLocal("EEEE,dd/MM/yy kk:mm");
  }

  // /// to days
  // String toDay() {
  //   return Const.days.entries.where((element) => element.value == this).first.key;
  // }

  /// To bytes formatter
  String toBytes() {
    if (this == 0) return "0 B";
    const k = 1024;
    const sizes = ["B", "KB", "MB", "GB", "TB"];
    final i = (log(this) / log(k)).floor();
    return "${(this / pow(k, i)).toStringAsFixed(0)} ${sizes[i]}";
  }

  /// To string as fixed pretty
  String toStringAsFixedPretty(int fractionDigits) {
    return toStringAsFixed(2).replaceFirst(RegExp(r'\.?0*$'), '');
  }

  bool get isInteger => this is int || this == roundToDouble();

  num forceRound() {
    if (isInteger) return toInt();
    return toDouble().toPrecision(decimal: 2);
  }
}
