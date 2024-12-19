import 'package:cashier_mini/app/feature/presentation/transaction/controller/transaction_cart/c_transaction_cart_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/controller/transaction_create/c_transaction_create_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionProvider {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<CTransactionCreateCubit>(
          create: (context) => CTransactionCreateCubit(),
        ),
        BlocProvider<CTransactionCartCubit>(
          create: (context) => CTransactionCartCubit(),
        ),
      ];
}
