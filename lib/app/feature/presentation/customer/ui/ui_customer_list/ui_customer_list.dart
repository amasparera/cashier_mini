import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_list/c_customer_list_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/customer/customer_lang.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class UICustomerList extends StatelessWidget {
  const UICustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppText(
            text: CustomerLang.list_title.getString(context),
            style: AppTextStlye.titleLarge,
          ),
          actions: [AppIconButton(onPressed: () {}, icon: Icons.more_vert_rounded)],
        ),
        floatingActionButton: AppFloatingButton(
          onPressed: () => context.read<CCustomerListCubit>().onAddCustomer(context),
        ),
        body: BlocBuilder<CCustomerListCubit, CCustomerListState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () => context.read<CCustomerListCubit>().onGetData(isReset: true),
              child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) => ListTile(
                        title: AppText(text: state.data[index].name),
                        subtitle: AppText(text: state.data[index].gender.title),
                        onTap: () => context.read<CCustomerListCubit>().onAddDetail(context, index),
                      )),
            );
          },
        ));
  }
}
