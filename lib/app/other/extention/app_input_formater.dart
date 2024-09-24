part of 'extention_export.dart';

class AppPercentageInputFormatter extends TextInputFormatter {
  final num max;
  final num min;
  final num? decimal;

  AppPercentageInputFormatter({this.min = 0, this.max = 100, this.decimal});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final f = NumberFormat.decimalPattern('ajor');
    // final f = NumberFormat.decimalPattern('${Lang.id.languageCode}_${Lang.id..countryCode}');

    bool hasDecimal = newValue.text.contains(f.symbols.DECIMAL_SEP);

    if (decimal != null && decimal! > 0) {
      if (newValue.text.split(f.symbols.DECIMAL_SEP).length > 2) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).length > decimal!) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).isEmpty) return newValue;
    } else {
      if (hasDecimal) return oldValue;
    }

    num value = f.parse(newValue.text.isEmpty ? '$min' : newValue.text);

    if (value <= min) return newValue.copyWith(text: '$min', selection: TextSelection.collapsed(offset: '$min'.length));

    if (value > max) value = max;

    String newText = f.format(value);
    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}

class AppNumericInpuFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight = newValue.text.length - newValue.selection.end;
      final f = NumberFormat("#,###");
      final number = int.parse(newValue.text.replaceAll(f.symbols.GROUP_SEP, ''));
      final newString = f.format(number);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}

class AppCurrencyInputFormatter extends TextInputFormatter {
  final num? max;
  final num min;
  final num? decimal;

  AppCurrencyInputFormatter({this.min = 0, this.max, this.decimal});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final f = NumberFormat.decimalPattern('id');
    // final f = NumberFormat.decimalPattern('${Lang.id.languageCode}_${Lang.id..countryCode}');

    bool hasDecimal = newValue.text.contains(f.symbols.DECIMAL_SEP);

    if (decimal != null && decimal! > 0) {
      if (newValue.text.split(f.symbols.DECIMAL_SEP).length > 2) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).length > decimal!) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).isEmpty) return newValue;
    } else {
      if (hasDecimal) return oldValue;
    }

    num value = f.parse(newValue.text.isEmpty ? '$min' : newValue.text);

    if (value <= min) return newValue.copyWith(text: '$min', selection: TextSelection.collapsed(offset: '$min'.length));

    if (max != null && value > max!) value = max!;

    String newText = f.format(value);
    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}

class AppDayInputFormatter extends TextInputFormatter {
  final DateTime date;

  AppDayInputFormatter({required this.date});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue.copyWith(text: '0', selection: const TextSelection.collapsed(offset: 1));
    }

    if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight = newValue.text.length - newValue.selection.end;
      final number = int.parse(newValue.text);

      if (number > date.day) {
        return const TextEditingValue().copyWith(
          text: '${date.day}',
          selection: const TextSelection.collapsed(offset: 2),
        );
      }

      final newString = "$number";

      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}

class AppRangeTextInputFormatter extends TextInputFormatter {
  num? decimalRange;
  num? maxValue;
  num? minValue;
  num? maxRange;

  AppRangeTextInputFormatter({this.decimalRange = 0, this.minValue = 0, this.maxValue, this.maxRange});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    try {
      if (newValue.text == '' && minValue == 0) {
        return const TextEditingValue().copyWith(text: '0', selection: const TextSelection.collapsed(offset: 1));
      }

      if (newValue.text.contains(",")) {
        return oldValue;
      }

      if (decimalRange != null && decimalRange! > 0) {
        if (newValue.text.split('.').length > 2) {
          return oldValue;
        }
        if (newValue.text.contains(".") && newValue.text.substring(newValue.text.indexOf(".") + 1).length > decimalRange!) {
          return oldValue;
        }
      } else {
        if (newValue.text.contains(".")) {
          return oldValue;
        }
      }

      if (minValue == 0 && newValue.text.length == 2 && newValue.text[0] == '0') {
        if (newValue.text[0] == '0' && newValue.text[1] == '.') {
          return const TextEditingValue().copyWith(text: newValue.text, selection: TextSelection.collapsed(offset: newValue.text.length));
        }
        if (newValue.text[0] == '0' && newValue.text.length > 1 && newValue.text[1] != '0') {
          if (maxValue != null && num.parse(newValue.text) > maxValue!) {
            return const TextEditingValue().copyWith(text: '$maxValue', selection: TextSelection.collapsed(offset: '$maxValue'.length));
          } else {
            return const TextEditingValue().copyWith(text: newValue.text[1], selection: const TextSelection.collapsed(offset: 1));
          }
        }
        if (newValue.text[0] == '0' && newValue.text[1] == '0') {
          return oldValue;
        }
      }
      if (num.parse(newValue.text) < minValue!) {
        return const TextEditingValue().copyWith(text: '$minValue', selection: const TextSelection.collapsed(offset: 1));
      }

      if (maxRange != null) {
        if (newValue.text.contains(".")) {
          if (newValue.text.substring(0, newValue.text.indexOf(".")).length > maxRange!) {
            return oldValue;
          }
        } else {
          if (newValue.text.length > maxRange!) {
            return oldValue;
          }
        }
      }

      if (maxValue != null) {
        if (num.parse(newValue.text) > maxValue!) {
          return const TextEditingValue().copyWith(text: '$maxValue', selection: TextSelection.collapsed(offset: '$maxValue'.length));
        }
      }

      return newValue;
    } catch (e) {
      return oldValue;
    }
  }
}

class AppUpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
