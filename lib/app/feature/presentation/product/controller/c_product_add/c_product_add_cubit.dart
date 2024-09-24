// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:cashier_mini/app/entity/enums/app_currency.dart';
import 'package:cashier_mini/app/entity/enums/product_unit.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/domain/product/usecase_create_product.dart';
import 'package:cashier_mini/app/feature/domain/product/usecase_delete_product.dart';
import 'package:cashier_mini/app/feature/domain/product/usecase_update_product.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/show/app_show.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';

part 'c_product_add_state.dart';

class CProductAddArgs {
  final ValueChanged<MProduct> onUpdate;
  final ValueChanged<MProduct>? onDelete;
  final MProduct? data;

  CProductAddArgs({
    required this.onUpdate,
    this.onDelete,
    this.data,
  });
}

class CProductAddCubit extends Cubit<CProductAddState> {
  CProductAddCubit() : super(const CProductAddState());

  TextEditingController textName = TextEditingController();
  TextEditingController textFill = TextEditingController();
  TextEditingController textPrice = TextEditingController();

  final formKey = GlobalKey<FormState>();
  late CProductAddArgs args;
  MProduct? data;

  onSelectTypeBarcode(bool value) {
    emit(state.copyWith(isAuto: value));
  }

  onSelectUnit(ProductUnit? value) {
    emit(state.copyWith(unit: value));
  }

  onSelectCurrency(AppCurrency? value) {
    emit(state.copyWith(currencyType: value));
  }

  onCreate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = MProduct(
      fill: int.tryParse(textFill.text) ?? 0,
      barcode: state.barcode,
      currency: state.currencyType!,
      name: textName.text,
      price: int.tryParse(textPrice.text.replaceAll('.', '')) ?? 0,
      unit: state.unit!,
    );

    final res = await UsecaseCreateProduct.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onUpdate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = data!.copyWith(
      fill: int.tryParse(textFill.text) ?? 0,
      barcode: state.barcode,
      currency: state.currencyType!,
      name: textName.text,
      price: int.tryParse(textPrice.text.replaceAll('.', '')) ?? 0,
      unit: state.unit!,
    );

    final res = await UsecaseUpdateProduct.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onDelete(BuildContext context) async {
    final res = await AppShow.confirmDelete(context);
    if (res == true) {
      await UsecaseDeleteProduct.call(data!);
      if (context.mounted) {
        args.onDelete?.call(data!);
        context.pop();
      }
    }
  }

  onInit<T>(CProductAddArgs args) {
    this.args = args;
    if (args.data == null) {
      emit(const CProductAddState());
      textFill.clear();
      textName.clear();
      textPrice.clear();
    } else {
      data = args.data;
      emit(CProductAddState(
        barcode: args.data?.barcode,
        currencyType: args.data?.currency,
        unit: args.data?.unit,
      ));

      textFill.text = args.data?.fill.toString() ?? '';
      textName.text = args.data?.name.toString() ?? '';
      textPrice.text = args.data?.price.toCurrency(withSymbol: false) ?? '';
    }
  }
}
