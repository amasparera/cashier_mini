import 'package:cashier_mini/app/entity/enums/app_currency.dart';
import 'package:cashier_mini/app/entity/enums/product_unit.dart';
import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_add/c_product_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_lang.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/validation/app_validation.dart';
import 'package:cashier_mini/app/other/widget/app_divider.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class UIProductAdd extends StatelessWidget {
  const UIProductAdd({super.key, required this.args});

  final CProductAddArgs args;

  @override
  Widget build(BuildContext context) {
    final read = context.read<CProductAddCubit>();
    read.onInit(args);
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: args.data == null ? ProductLang.add_title.getString(context) : ProductLang.detail_title.getString(context),
          style: AppTextStlye.titleLarge,
        ),
        actions: [
          if (args.data != null) AppIconButton(onPressed: () => read.onDelete(context), icon: Icons.delete_forever_rounded),
        ],
      ),

      // backgroundColor: Colors.white,
      body: BlocBuilder<CProductAddCubit, CProductAddState>(
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
                          text: ProductLang.information.getString(context),
                          style: AppTextStlye.titleLarge,
                        ),
                        const AppSizeBox(size: 4),
                        // const AppSizeBox(size: 2),
                        // SizedBox(
                        //   height: 90,
                        //   child: ListView.separated(
                        //       padding: EdgeInsets.only(left: context.appParrentMargin),
                        //       shrinkWrap: true,
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount: 4,
                        //       itemBuilder: (context, index) => Stack(
                        //             alignment: Alignment.topRight,
                        //             children: [
                        //               const Padding(
                        //                 padding: EdgeInsets.only(right: 15, top: 15),
                        //                 child: BImage(
                        //                   size: BImageSize.s80,
                        //                   type: BImageType.rectangular,
                        //                 ),
                        //               ),
                        //               IconButton(
                        //                   style: IconButton.styleFrom(
                        //                     padding: EdgeInsets.zero,
                        //                     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //                     maximumSize: const Size(30, 30),
                        //                     minimumSize: const Size(30, 30),
                        //                   ),
                        //                   onPressed: () {
                        //                     AppShow.galeriPicker();
                        //                   },
                        //                   icon: Container(
                        //                     height: 40,
                        //                     width: 40,
                        //                     decoration: BoxDecoration(
                        //                       shape: BoxShape.circle,
                        //                       color: const Color(0xff00000080).withOpacity(.5),
                        //                     ),
                        //                     child: const Icon(
                        //                       Icons.close_rounded,
                        //                       size: 20,
                        //                     ),
                        //                   ))
                        //             ],
                        //           ),
                        //       separatorBuilder: (BuildContext context, int index) => const AppSizeBox()),
                        // ),
                        // const AppSizeBox(size: 2),
                        AppTextField(
                          controller: controller.textName,
                          labelText: ProductLang.name_product.getString(context),
                        ),
                        const AppSizeBox(size: 3),
                        Row(
                          children: [
                            Expanded(
                              // flex: 2,
                              child: AppTextField(
                                controller: controller.textFill,
                                borderType: AppTextFieldBorder.underlane,
                                type: AppTextFieldType.numeric,
                                labelText: ProductLang.fill.getString(context),
                                validator: (p0) => AppValidation.required(p0, ProductLang.fill.getString(context)),
                              ),
                            ),
                            const AppSizeBox(size: 3),
                            AppDropdown<ProductUnit>(
                              initValue: state.unit,
                              items: ProductUnit.values,
                              itemTitle: (p0) => p0.title,
                              title: ProductLang.unit.getString(context),
                              onSelected: (value) => read.onSelectUnit(value),
                            )
                          ],
                        ),
                        const AppSizeBox(size: 3),
                        Row(
                          children: [
                            Expanded(
                              // flex: 2,
                              child: AppTextField(
                                controller: controller.textPrice,
                                borderType: AppTextFieldBorder.underlane,
                                type: AppTextFieldType.currency,
                                labelText: ProductLang.price.getString(context),
                                validator: (p0) => AppValidation.required(p0, ProductLang.price.getString(context)),
                              ),
                            ),
                            const AppSizeBox(size: 3),
                            AppDropdown<AppCurrency>(
                              initValue: state.currencyType,
                              items: AppCurrency.values,
                              itemTitle: (p0) => p0.symbol,
                              title: ProductLang.currency.getString(context),
                              onSelected: (value) => read.onSelectCurrency(value),
                            )
                          ],
                        ),
                        const AppSizeBox(size: 10),
                        const AppDivider(type: AppDividerType.hight),
                        const AppSizeBox(size: 10),
                        Row(
                          children: [
                            const AppText(
                              text: 'Barcode',
                              style: AppTextStlye.titleLarge,
                            ),
                            const Spacer(),
                            FilterChip(
                              label: state.isAuto ? const Text('Auto') : const Text('Scan'),
                              selected: state.isAuto,
                              onSelected: (value) => controller.onSelectTypeBarcode(value),
                            ),
                          ],
                        ),
                        const AppSizeBox(size: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(context.appMargin * 3),
                            border: Border.all(),
                          ),
                          height: context.appSize * 20,
                          width: double.infinity,
                          padding: EdgeInsets.all(context.appMargin * 4),
                          alignment: Alignment.center,
                          child: state.isAuto
                              ? AppText(text: ProductLang.auto_generate.getString(context))
                              : (state.barcode != null ? SfBarcodeGenerator(value: state.barcode) : const Icon(Icons.camera_alt)),
                        )
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
