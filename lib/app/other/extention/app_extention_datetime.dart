part of 'extention_export.dart';

extension AppExtentionDateTime on DateTime {
  /// Apply time to date
  DateTime applyTime(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }

  /// Get month only from DateTime
  DateTime monthOnly() {
    return DateTime(year, month);
  }

  /// Get date only from DateTime
  DateTime dateOnly() {
    return DateTime(year, month, day);
  }

  /// Get time only from DateTime
  TimeOfDay timeOnly() {
    return TimeOfDay.fromDateTime(this);
  }

  /// Get start of day
  DateTime startOfDay() {
    return DateTime(year, month, day);
  }

  /// Get end of day
  DateTime endOfDay() {
    return DateTime(year, month, day, 23, 59, 59, 999);
  }

  /// Format DateTime to String
  String format(String format) {
    return DateFormat(format).format(this);
  }

  /// Format DateTime to String using database format
  String formatDB() {
    return format('${Const.DB_DATE_PATTERN} ${Const.DB_TIME_PATTERN}');
  }

  /// Format DateTime to String using local format
  String formatLocal(String format) {
    return DateFormat(format, 'id_ID').format(toLocal());
  }

  /// Check whether Date is equal to other Date
  bool isEqual(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Check whether month is equal to other month
  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  /// Get time ago from DateTime
  String timeAgo() {
    Duration diff = DateTime.now().difference(this);
    if (diff.inDays > 365) {
      num years = (diff.inDays / 365).floor();
      return "${years > 1 ? years : ''} ${((diff.inDays / 365).floor() == 1 ? "year" : "years")} ${'ago'}";
    }
    if (diff.inDays > 30) {
      num months = (diff.inDays / 30).floor();
      return "${months > 1 ? months : ''} ${((diff.inDays / 30).floor() == 1 ? "month" : "months")} ${'ago'}";
    }
    if (diff.inDays > 7) {
      num weeks = (diff.inDays / 7).floor();
      return "${weeks > 1 ? weeks : ''} ${((diff.inDays / 7).floor() == 1 ? "week" : "weeks")} ${'ago'}";
    }
    if (diff.inDays > 0) {
      num days = (diff.inDays).floor();
      return "${days > 1 ? days : ''} ${(diff.inDays == 1 ? "day" : "days")} ${'ago'}";
    }
    if (diff.inHours > 0) {
      num hours = (diff.inHours).floor();
      return "${hours > 1 ? hours : ''} ${(diff.inHours == 1 ? "hour" : "hours")} ${'ago'}";
    }
    if (diff.inMinutes > 0) {
      num minutes = (diff.inMinutes).floor();
      return "${minutes > 1 ? minutes : ''} ${(diff.inMinutes == 1 ? "minute" : "minutes")} ${'ago'}";
    }
    return "just now";
  }

  /// Clip seconds from DateTime
  DateTime clipToMinute() {
    return DateTime(year, month, day, hour, minute);
  }

  int get weekOfMonth {
    var date = this;
    final firstDayOfTheMonth = DateTime(date.year, date.month, 1);
    int sum = firstDayOfTheMonth.weekday - 1 + date.day;
    if (sum % 7 == 0) {
      return sum ~/ 7;
    } else {
      return sum ~/ 7 + 1;
    }
  }

  DateTime startOfWeek() {
    var date = this;
    return DateTime(date.year, date.month, date.day - (date.weekday - 1));
  }

  int get lastDayOfMonth => DateTime(year, month + 1, 0).day;

  DateTime get lastDateOfMonth => DateTime(year, month + 1, 0);
}
