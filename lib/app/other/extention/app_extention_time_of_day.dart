part of 'extention_export.dart';

extension ExtensionTimeOfDay on TimeOfDay {
  /// Format 24 hours
  String format24() {
    String hour = "";
    String minute = (this.minute < 10) ? "0${this.minute}" : this.minute.toString();

    if (period == DayPeriod.am) {
      hour = (this.hour < 10) ? "0${this.hour}" : this.hour.toString();
    } else {
      hour = (this.hour < 10) ? (this.hour + 12).toString() : this.hour.toString();
    }

    return "$hour:$minute";
  }

  /// Get minutes spends
  int get inMinutes => hour * TimeOfDay.minutesPerHour + minute;
}
