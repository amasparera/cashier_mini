// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_product_add_cubit.dart';

class CProductAddState extends Equatable {
  final String? barcode;
  final bool isAuto;
  final ProductUnit? unit;
  final AppCurrency? currencyType;
  final List<XFile> image;
  final AppButtonState buttonState;

  const CProductAddState({
    this.barcode,
    this.isAuto = true,
    this.unit,
    this.currencyType,
    this.image = const [],
    this.buttonState = AppButtonState.active,
  });

  @override
  List<Object?> get props {
    return [
      barcode,
      isAuto,
      unit,
      currencyType,
      image,
      buttonState,
    ];
  }

  CProductAddState copyWith({
    String? barcode,
    bool? isAuto,
    ProductUnit? unit,
    AppCurrency? currencyType,
    List<XFile>? image,
    AppButtonState? buttonState,
  }) {
    return CProductAddState(
      barcode: barcode ?? this.barcode,
      isAuto: isAuto ?? this.isAuto,
      unit: unit ?? this.unit,
      currencyType: currencyType ?? this.currencyType,
      image: image ?? this.image,
      buttonState: buttonState ?? this.buttonState,
    );
  }
}
