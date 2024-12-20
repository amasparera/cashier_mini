import 'package:cashier_mini/app/feature/presentation/transaction/controller/transaction_create/c_transaction_create_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/transaction_lang.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/transaction_route.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/app_counter.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UITransactionCreate extends StatelessWidget {
  const UITransactionCreate({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CTransactionCreateCubit>();
    controller.init();
    return Scaffold(
        appBar: AppBar(
          title: AppText(
            text: TransactionLang.select_product.getString(context),
            style: AppTextStlye.titleLarge,
          ),
          actions: [AppIconButton(onPressed: () {}, icon: Icons.more_vert_rounded)],
        ),
        floatingActionButton: BlocBuilder<CTransactionCreateCubit, CTransactionCreateState>(
          builder: (context, state) {
            if (state.order.entries.fold(0, (pre, value) => pre + value.value) > 0) {
              return FloatingActionButton(
                onPressed: () {
                  TransactionRoute.toCart(context, state.order);
                },
                child: Icon(Icons.paypal),
              );
            } else {
              return SizedBox();
            }
          },
        ),
        body: BlocBuilder<CTransactionCreateCubit, CTransactionCreateState>(
          builder: (context, state) {
            return SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              controller: controller.refreshController,
              onRefresh: () async => await controller.onGetData(isReset: true),
              onLoading: () async => await controller.onGetData(),
              child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) => ListTile(
                        title: AppText(text: state.data[index].name),
                        subtitle: AppText(text: state.data[index].price.toCurrency()),
                        trailing: AppCounter(
                          count: state.order[state.data[index]] ?? 0,
                          onChange: (value) {
                            controller.onAddCart(context, index, value);
                          },
                        ),
                      )),
            );
          },
        ));
  }
}
