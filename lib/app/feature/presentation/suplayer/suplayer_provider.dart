import 'package:cashier_mini/app/feature/presentation/suplayer/controller/c_suplayer_add/c_suplayer_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/controller/c_suplayer_list/c_suplayer_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuplayerProvider {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<CSuplayerListCubit>(
          create: (context) => CSuplayerListCubit(),
        ),
        BlocProvider<CSuplayerAddCubit>(
          create: (context) => CSuplayerAddCubit(),
        ),
      ];
}
