import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_list/c_product_list_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_lang.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UIProductList extends StatelessWidget {
  const UIProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppText(
            text: ProductLang.list_title.getString(context),
            style: AppTextStlye.titleLarge,
          ),
          actions: [AppIconButton(onPressed: () {}, icon: Icons.more_vert_rounded)],
        ),
        floatingActionButton: AppFloatingButton(
          onPressed: () => context.read<CProductListCubit>().onAddProduct(context),
        ),
        body: BlocBuilder<CProductListCubit, CProductListState>(
          builder: (context, state) {
            // return RefreshIndicator(
            //   onRefresh: () => context.read<CProductListCubit>().onGetData(isReset: true),
            //   child: ListView.builder(
            //       itemCount: state.data.length,
            //       itemBuilder: (context, index) => ListTile(
            //             title: AppText(text: state.data[index].name),
            //             subtitle: AppText(text: state.data[index].price.toCurrency()),
            //             onTap: () => context.read<CProductListCubit>().onAddDetail(context, index),
            //           )),
            // );
            return SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              // header: WaterDropHeader(),
              // footer: CustomFooter(
              //   builder: (BuildContext context, LoadStatus mode) {
              //     Widget body;
              //     if (mode == LoadStatus.idle) {
              //       body = Text("pull up load");
              //     } else if (mode == LoadStatus.loading) {
              //       body = CupertinoActivityIndicator();
              //     } else if (mode == LoadStatus.failed) {
              //       body = Text("Load Failed!Click retry!");
              //     } else if (mode == LoadStatus.canLoading) {
              //       body = Text("release to load more");
              //     } else {
              //       body = Text("No more Data");
              //     }
              //     return Container(
              //       height: 55.0,
              //       child: Center(child: body),
              //     );
              //   },
              // ),
              controller: context.read<CProductListCubit>().refreshController,
              onRefresh: () async => await context.read<CProductListCubit>().onGetData(isReset: true),
              onLoading: () async => await context.read<CProductListCubit>().onGetData(),
              child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) => ListTile(
                        title: AppText(text: state.data[index].name),
                        subtitle: AppText(text: state.data[index].price.toCurrency()),
                        onTap: () => context.read<CProductListCubit>().onAddDetail(context, index),
                      )),
            );
          },
        ));
  }
}
