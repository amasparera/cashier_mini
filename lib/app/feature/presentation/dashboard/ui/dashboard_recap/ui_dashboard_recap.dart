import 'package:cashier_mini/app/feature/presentation/dashboard/controller/dashboard/c_dashboard_cubit.dart';
import 'package:cashier_mini/app/other/extention/app_extention_double.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UIDashboardRecap extends StatelessWidget {
  const UIDashboardRecap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const AppText(text: 'Recap'),
      ),
      body: BlocBuilder<CDashboardCubit, CDashboardState>(
        builder: (context, state) {
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            controller: context.read<CDashboardCubit>().refreshController,
            onRefresh: () async => await context.read<CDashboardCubit>().onGetData(isReset: true),
            onLoading: () async => await context.read<CDashboardCubit>().onGetData(),
            child: ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) => ListTile(
                      title: AppText(text: state.data[index].id.toString()),
                      subtitle: AppText(text: state.data[index].customer?.name ?? "Tanpa Konsumen"),
                      trailing: AppText(text: state.data[index].totalPrice?.toCurrency() ?? ''),
                    )),
          );
        },
      ),
    );
  }
}
