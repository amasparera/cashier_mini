import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_list/c_customer_list_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/customer/customer_lang.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UICustomerList extends StatelessWidget {
  const UICustomerList({super.key, required this.onSelect});

  final ValueChanged? onSelect;

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CCustomerListCubit>();
    return Scaffold(
        appBar: AppBar(
          title: AppText(
            text: CustomerLang.list_title.getString(context),
            style: AppTextStlye.titleLarge,
          ),
          actions: [AppIconButton(onPressed: () {}, icon: Icons.more_vert_rounded)],
        ),
        floatingActionButton: AppFloatingButton(onPressed: () => controller.onAddCustomer(context)),
        body: BlocBuilder<CCustomerListCubit, CCustomerListState>(
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
                        subtitle: AppText(text: state.data[index].gender.title),
                        onTap: onSelect != null
                            ? () {
                                onSelect!(state.data[index]);
                                context.pop();
                              }
                            : () => context.read<CCustomerListCubit>().onAddDetail(context, index),
                      )),
            );
          },
        ));
  }
}
