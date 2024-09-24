import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_add/c_product_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_list/c_product_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductProvider {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<CProductListCubit>(
          create: (context) => CProductListCubit(),
        ),
        BlocProvider<CProductAddCubit>(
          create: (context) => CProductAddCubit(),
        ),
      ];
}
