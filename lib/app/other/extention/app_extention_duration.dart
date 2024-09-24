part of 'extention_export.dart';

extension AppExtentionDuration on Duration {
  /// Format Duration to String in [mm:ss] format
  String formatDuration() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(inMinutes);
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
