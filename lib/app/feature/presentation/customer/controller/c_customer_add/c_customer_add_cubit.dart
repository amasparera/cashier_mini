// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/enums/enum_gander.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/domain/customer/usecase_create_customer.dart';
import 'package:cashier_mini/app/feature/domain/customer/usecase_delete_customer.dart';
import 'package:cashier_mini/app/feature/domain/customer/usecase_update_customer.dart';
import 'package:cashier_mini/app/other/show/app_show.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';

part 'c_customer_add_state.dart';

class CCustomerAddArgs {
  final ValueChanged<MCustomer> onUpdate;
  final ValueChanged<MCustomer>? onDelete;
  final MCustomer? data;

  CCustomerAddArgs({
    required this.onUpdate,
    this.onDelete,
    this.data,
  });
}

class CCustomerAddCubit extends Cubit<CCustomerAddState> {
  CCustomerAddCubit() : super(const CCustomerAddState());

  TextEditingController textName = TextEditingController();
  TextEditingController textAddress = TextEditingController();
  TextEditingController textPhone = TextEditingController();

  final formKey = GlobalKey<FormState>();
  late CCustomerAddArgs args;
  MCustomer? data;

  onSelectTypeBarcode(bool value) {
    emit(state.copyWith(isAuto: value));
  }

  onGender(EnumGender? value) {
    emit(state.copyWith(gender: value));
  }

  onCreate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = MCustomer(
      name: textName.text,
      gender: state.gender!,
      addess: textAddress.text,
      phone: textPhone.text,
    );

    final res = await UsecaseCreateCustomer.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onUpdate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = data!.copyWith(
      name: textName.text,
      gender: state.gender!,
      addess: textAddress.text,
      phone: textPhone.text,
    );

    final res = await UsecaseUpdateCustomer.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onDelete(BuildContext context) async {
    final res = await AppShow.confirmDelete(context);
    if (res == true) {
      await UsecaseDeleteCustomer.call(data!);
      if (context.mounted) {
        args.onDelete?.call(data!);
        context.pop();
      }
    }
  }

  onInit<T>(CCustomerAddArgs args) {
    this.args = args;
    if (args.data == null) {
      emit(const CCustomerAddState());
      textAddress.clear();
      textName.clear();
      textPhone.clear();
    } else {
      data = args.data;
      emit(CCustomerAddState(
        gender: args.data?.gender,
      ));

      textPhone.text = args.data?.phone ?? "";
      textName.text = args.data?.name.toString() ?? '';
      textAddress.text = args.data?.addess ?? '';
    }
  }
}
