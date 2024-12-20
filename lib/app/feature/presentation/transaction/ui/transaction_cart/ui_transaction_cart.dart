import 'package:cashier_mini/app/core/constants/const.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_lang.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/controller/transaction_cart/c_transaction_cart_cubit.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class UITransactionCart extends StatelessWidget {
  const UITransactionCart({super.key, required this.args});
  final CTransactionCartArgs args;

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CTransactionCartCubit>();
    controller.ini(args);
    return Scaffold(
        appBar: AppBar(
          title: AppText(
            text: ProductLang.list_title.getString(context),
            style: AppTextStlye.titleLarge,
          ),
          actions: [AppIconButton(onPressed: () {}, icon: Icons.more_vert_rounded)],
        ),
        body: BlocBuilder<CTransactionCartCubit, CTransactionCartState>(builder: (context, state) {
          return Column(
            children: [
              const ListTile(title: AppText(text: "Tanpa Konsumen"), leading: Icon(Icons.person)),
              Expanded(
                  child: ListView(
                children: [
                  ...state.order.entries.map((e) => ListTile(
                      title: AppText(text: e.key.name),
                      subtitle: AppText(text: "${e.value} ${e.key.unit.title}"),
                      trailing: AppText(text: (e.value * e.key.price).toCurrency())))
                ],
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: Const.parrentMargin, vertical: Const.margin * 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [AppText(text: "Total ${state.totalPriceOrder.toCurrency()}"), AppButton(title: "Selesai", onPressed: () {})],
                ),
              )
            ],
          );
        }));
  }
}
