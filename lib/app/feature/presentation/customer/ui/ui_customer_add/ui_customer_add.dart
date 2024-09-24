import 'package:cashier_mini/app/entity/enums/enum_gander.dart';
import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_add/c_customer_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/customer/customer_lang.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class UICustomerAdd extends StatelessWidget {
  const UICustomerAdd({super.key, required this.args});

  final CCustomerAddArgs args;

  @override
  Widget build(BuildContext context) {
    final read = context.read<CCustomerAddCubit>();
    read.onInit(args);
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: args.data == null ? CustomerLang.add_title.getString(context) : CustomerLang.detail_title.getString(context),
          style: AppTextStlye.titleLarge,
        ),
        actions: [
          if (args.data != null) AppIconButton(onPressed: () => read.onDelete(context), icon: Icons.delete_forever_rounded),
        ],
      ),

      // backgroundColor: Colors.white,
      body: BlocBuilder<CCustomerAddCubit, CCustomerAddState>(
        builder: (context, state) {
          final controller = read;
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.appParrentMargin),
                  child: Form(
                    key: read.formKey,
                    child: ListView(
                      children: [
                        const AppSizeBox(size: 2),
                        AppText(
                          text: CustomerLang.information.getString(context),
                          style: AppTextStlye.titleLarge,
                        ),
                        const AppSizeBox(size: 4),
                        AppTextField(
                          controller: controller.textName,
                          labelText: CustomerLang.name_customer.getString(context),
                        ),
                        const AppSizeBox(size: 3),
                        AppTextField(
                          controller: controller.textPhone,
                          borderType: AppTextFieldBorder.underlane,
                          type: AppTextFieldType.numeric,
                          labelText: 'Nomer HP',
                        ),
                        const AppSizeBox(size: 3),
                        AppTextField(
                          controller: controller.textAddress,
                          borderType: AppTextFieldBorder.underlane,
                          type: AppTextFieldType.text,
                          maxLines: 5,
                          labelText: 'Alamat',
                        ),
                        const AppSizeBox(size: 3),
                        AppDropdown<EnumGender>(
                          initValue: state.gender,
                          items: EnumGender.values,
                          itemTitle: (p0) => p0.title,
                          title: CustomerLang.currency.getString(context),
                          onSelected: (value) => read.onGender(value),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(context.appMargin),
                child: AppButton(
                  state: state.buttonState,
                  title: 'Simpan',
                  onPressed: () => args.data == null ? read.onCreate(context) : read.onUpdate(context),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
