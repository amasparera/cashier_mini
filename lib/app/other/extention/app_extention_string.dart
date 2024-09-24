part of 'extention_export.dart';

extension AppExtensionNullableString on String? {
  /// Returns true if this nullable string is either null or empty.
  bool get isNullOrBlank => this == null || this?.trim().isEmpty == true;

  /// Return if blank
  String ifBlank(String value) {
    return isNullOrBlank ? value : this!;
  }
}

extension AppExtensionString on String {
  /// In caps first letter
  String get inCaps => isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';

  /// In caps all letter
  String get allInCaps => toUpperCase();

  /// Capitalize first letter of each word
  String get capitalizeFirstOfEach => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");

  /// Capitalize first letter of each word
  // String get trCapitalizeFirstOfEachOfEach => tr.replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");

  /// is blank
  bool get isBlank => trim().isEmpty;

  /// Title case
  String titleCase() {
    List<String> fragment = trim().split(' ');
    var formatted = fragment.map((e) => e.substring(0, 1).toUpperCase() + e.substring(1));
    return formatted.join(' ');
  }

  /// Filter string
  bool filterString() {
    RegExp regExp = RegExp(r"\w|\d|\s");
    return regExp.hasMatch(this);
  }

  /// Get init status
  int initStatus() {
    return 0;
  }

  /// Get loading status
  int loadingStatus() {
    return 999;
  }

  /// Get success status
  int successStatus() {
    return 200;
  }

  /// Get error status
  int errorStatus() {
    return 500;
  }

  /// Remove last character
  String removeLastCharacter() {
    String result = '';
    if ((this != '') && (isNotEmpty)) {
      result = substring(0, length - 1);
    }

    return result;
  }

  /// Get last character
  String getLastCharacter() {
    String result = '';
    if ((this != '') && (isNotEmpty)) {
      result = this[length - 1];
    }

    return result;
  }

  /// Format credit card number
  String formatCardNumber() {
    var buffer = StringBuffer();
    for (int i = 0; i < length; i++) {
      buffer.write(this[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != length) {
        buffer.write(' - ');
      }
    }

    return buffer.toString();
  }

  /// Format credit card number
  num numFromCurrency() {
    // parse indonesian currency format to decimal
    final f = NumberFormat.decimalPattern();
    return f.parse(isEmpty ? '0' : this);
  }

  /// Format numeric
  num numFromNumeric() {
    final f = NumberFormat("#,###");
    final number = int.tryParse(replaceAll(f.symbols.GROUP_SEP, ''));
    return number ?? 0;
  }

  /// Is valid email
  bool isValidEmail() {
    return Const.EMAIL_REGEX.hasMatch(this);
  }

  /// To time of day format
  TimeOfDay toTimeOfDay() {
    return TimeOfDay(hour: int.parse(split(":")[0]), minute: int.parse(split(":")[1]));
  }

  /// Add char at position
  String addCharAtPosition({required String char, required int position, bool repeat = false}) {
    if (!repeat) {
      if (length < position) {
        return this;
      }
      var before = substring(0, position);
      var after = substring(position, length);
      return before + char + after;
    } else {
      if (position == 0) {
        return this;
      }
      var buffer = StringBuffer();
      for (var i = 0; i < length; i++) {
        if (i != 0 && i % position == 0) {
          buffer.write(char);
        }
        buffer.write(String.fromCharCode(runes.elementAt(i)));
      }
      return buffer.toString();
    }
  }

  /// To date time
  DateTime toDateTime(String? format) {
    if (format == null) return DateTime.parse(this);
    return DateFormat(format).parse(this);
  }

  /// Get n last chars
  String lastChars(int n) => substring(length - n);
}
