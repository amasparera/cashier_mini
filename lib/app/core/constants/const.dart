// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class Const {
  // regex
  static RegExp TEXT_REGEX = RegExp("[^a-zA-Z0-9 `~!@#\$%^&*()_=+:;',.<>/?\"{}[\\]\\\\|-]", unicode: true);
  static RegExp PHONE_REGEX = RegExp("[^0-9]", unicode: true);
  static RegExp PHONE_VALID_REGEX = RegExp("[0-9]{4,20}", unicode: true);
  static RegExp CURRENCY_REGEX = RegExp("[0-9.,]+", unicode: true);
  static RegExp EMAIL_REGEX = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // date pattern
  static const VIEW_PATTERN = 'dd-MM-yyyy'; // 24-07-2023
  static const VIEW_DATETIME_PATTERN = 'EEEE, dd MMM yyyy HH:mm'; // Sabtu, 24 Juli 2023 15:39
  static const VIEW_DATETIME_PATTERN_2 = 'dd/MM/yyyy HH:mm'; // 24/07/2023 15:39
  static const VIEW_DATETIME_PATTERN_3 = 'EEEE, dd/MM/yy HH:mm'; // Sabtu, 24/07/23 15:39
  static const VIEW_DATETIME_PATTERN_4 = 'dd MMMM yyyy HH:mm'; // 24 Juli 2023 15:39
  static const VIEW_DATETIME_PATTERN_5 = 'EEE, dd MMM yyy - hh:mm'; // Sab, 24 Jul 2023 - 03:39
  static const VIEW_DATE_PATTERN = 'EEEE, dd MMM yy'; // Sabtu, 24 Juli 23
  static const VIEW_TIME_PATTERN = 'HH:mm'; // 15:39
  static const VIEW_DATE_PATTERN_2 = 'dd MMMM yyyy'; // 24 Juli 2023
  static const FILTER_PATTERN = 'yyyy-MM-dd'; // 2023-07-24
  static const FILTER_DATE_PATTERN = 'dd MMM yyyy'; // 24 Juli 2023
  static const FILTER_TIME_PATTERN = 'HH:mm'; // 15:39
  static const FILTER_MONTH_PATTERN = 'MMM yyyy'; // Jul 2023
  static const FILTER_MONTH_PATTERN_2 = 'MMMM yyyy'; // Juli 2023
  static const FILTER_MONTH_PATTERN_3 = 'dd MMMM'; // 24 Juli
  static const FILTER_MONTH_PATTERN_ONLY = 'MMMM'; // Juli
  static const FILTER_YEAR_PATTERN = 'yyyy'; // 2023

  // date pattern
  static const DB_DATE_PATTERN = '$DB_YEAR_PATTERN-$DB_MONTH_PATTERN-$DB_DAY_PATTERN';
  static const DB_DAY_PATTERN = 'dd';
  static const DB_MONTH_PATTERN = 'MM';
  static const DB_YEAR_PATTERN = 'yyyy';
  static const DB_TIME_PATTERN = 'HH:mm:ss';

// main size margin
  static const double margin = 4;
  static const double parrentMargin = 20;
}
