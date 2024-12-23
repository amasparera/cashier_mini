// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/enums/enum_gander.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/domain/suplayer/usecase_create_suplayer.dart';
import 'package:cashier_mini/app/feature/domain/suplayer/usecase_delete_suplayer.dart';
import 'package:cashier_mini/app/feature/domain/suplayer/usecase_update_suplayer.dart';
import 'package:cashier_mini/app/other/show/app_show.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';

part 'c_suplayer_add_state.dart';

class CSuplayerAddArgs {
  final ValueChanged<MSuplayer> onUpdate;
  final ValueChanged<MSuplayer>? onDelete;
  final MSuplayer? data;

  CSuplayerAddArgs({
    required this.onUpdate,
    this.onDelete,
    this.data,
  });
}

class CSuplayerAddCubit extends Cubit<CSuplayerAddState> {
  CSuplayerAddCubit() : super(const CSuplayerAddState());

  TextEditingController textName = TextEditingController();
  TextEditingController textAddress = TextEditingController();
  TextEditingController textPhone = TextEditingController();

  final formKey = GlobalKey<FormState>();
  late CSuplayerAddArgs args;
  MSuplayer? data;

  onSelectTypeBarcode(bool value) {
    emit(state.copyWith(isAuto: value));
  }

  onGender(EnumGender? value) {
    emit(state.copyWith(gender: value));
  }

  onCreate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = MSuplayer(
      name: textName.text,
      addess: textAddress.text,
      phone: textPhone.text,
    );

    final res = await UsecaseCreateSuplayer.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onUpdate(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(buttonState: AppButtonState.loading));
    data = data!.copyWith(
      name: textName.text,
      addess: textAddress.text,
      phone: textPhone.text,
    );

    final res = await UsecaseUpdateSuplayer.call(data!);
    args.onUpdate.call(res);
    if (context.mounted) context.pop();

    emit(state.copyWith(buttonState: AppButtonState.active));
  }

  onDelete(BuildContext context) async {
    final res = await AppShow.confirmDelete(context);
    if (res == true) {
      await UsecaseDeleteSuplayer.call(data!);
      if (context.mounted) {
        args.onDelete?.call(data!);
        context.pop();
      }
    }
  }

  onInit<T>(CSuplayerAddArgs args) {
    this.args = args;
    if (args.data == null) {
      emit(const CSuplayerAddState());
      textAddress.clear();
      textName.clear();
      textPhone.clear();
    } else {
      data = args.data;

      textPhone.text = args.data?.phone ?? "";
      textName.text = args.data?.name.toString() ?? '';
      textAddress.text = args.data?.addess ?? '';
    }
  }
}
