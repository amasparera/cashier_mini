// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_customer_add_cubit.dart';

class CCustomerAddState extends Equatable {
  final String? barcode;
  final bool isAuto;
  final EnumGender? gender;
  final List<XFile> image;
  final AppButtonState buttonState;

  const CCustomerAddState({
    this.barcode,
    this.isAuto = true,
    this.gender,
    this.image = const [],
    this.buttonState = AppButtonState.active,
  });

  @override
  List<Object?> get props {
    return [
      barcode,
      isAuto,
      gender,
      image,
      buttonState,
    ];
  }

  CCustomerAddState copyWith({
    String? barcode,
    bool? isAuto,
    EnumGender? gender,
    List<XFile>? image,
    AppButtonState? buttonState,
  }) {
    return CCustomerAddState(
      barcode: barcode ?? this.barcode,
      isAuto: isAuto ?? this.isAuto,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      buttonState: buttonState ?? this.buttonState,
    );
  }
}
