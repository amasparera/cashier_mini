part of "widget_export.dart";

enum AppTextFieldState {
  normal,
  filed,
  disable,
  ;

  bool get isDisable => this == AppTextFieldState.disable;
  bool get isFilled => this == AppTextFieldState.filed;
  bool get isNormal => this == AppTextFieldState.normal;
}

enum AppTextFieldBorder {
  outlane,
  underlane,
  ;

  InputBorder get border => switch (this) {
        AppTextFieldBorder.outlane => const OutlineInputBorder(),
        AppTextFieldBorder.underlane => const UnderlineInputBorder(),
      };
}

enum AppTextFieldType {
  text,
  currency,
  numeric,
  percentage,
  phone;

  List<TextInputFormatter> get getTextInputFormatter => switch (this) {
        AppTextFieldType.text => [
            FilteringTextInputFormatter.deny(Const.TEXT_REGEX),
          ],
        AppTextFieldType.percentage => [
            FilteringTextInputFormatter.allow(Const.CURRENCY_REGEX),
            AppPercentageInputFormatter(),
          ],
        AppTextFieldType.currency => [
            FilteringTextInputFormatter.allow(Const.CURRENCY_REGEX),
            AppCurrencyInputFormatter(),
          ],
        AppTextFieldType.numeric => [
            AppRangeTextInputFormatter(),
            FilteringTextInputFormatter.digitsOnly,
          ],
        AppTextFieldType.phone => [
            FilteringTextInputFormatter.digitsOnly,
            FilteringTextInputFormatter.deny(Const.PHONE_REGEX),
            LengthLimitingTextInputFormatter(14),
          ],
      };
  TextInputType get getTextInputType => switch (this) {
        AppTextFieldType.text => TextInputType.text,
        AppTextFieldType.percentage => const TextInputType.numberWithOptions(decimal: true),
        AppTextFieldType.currency => TextInputType.number,
        AppTextFieldType.numeric => TextInputType.number,
        AppTextFieldType.phone => TextInputType.phone,
      };
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.state = AppTextFieldState.normal,
    this.labelText,
    this.hintText,
    this.helperText,
    this.type = AppTextFieldType.text,
    this.inputFormatters = const [],
    this.validator,
    this.borderType = AppTextFieldBorder.outlane,
    this.controller,
    this.maxLines,
  });
  final AppTextFieldState state;
  final AppTextFieldType type;
  final AppTextFieldBorder borderType;
  final String? labelText, hintText, helperText;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: !state.isDisable,
      validator: validator,
      minLines: 1,
      maxLines: maxLines,
      inputFormatters: type.getTextInputFormatter..addAll(inputFormatters),
      keyboardType: type.getTextInputType,
      controller: controller,
      decoration: InputDecoration(
        // prefixIcon: Icon(Icons.search),
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        border: borderType.border,
        filled: state.isFilled,
      ),
    );
  }
}
