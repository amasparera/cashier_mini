import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_add/c_customer_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_list/c_customer_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerProvider {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<CCustomerListCubit>(
          create: (context) => CCustomerListCubit(),
        ),
        BlocProvider<CCustomerAddCubit>(
          create: (context) => CCustomerAddCubit(),
        ),
      ];
}
