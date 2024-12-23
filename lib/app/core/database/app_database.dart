import 'dart:io';

import 'package:cashier_mini/app/entity/database_local/customer/dl_customer.dart';
import 'package:cashier_mini/app/entity/database_local/income/dl_income.dart';
import 'package:cashier_mini/app/entity/database_local/product/dl_product.dart';
import 'package:cashier_mini/app/entity/database_local/suplayer/dl_suplayer.dart';
import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabase {
  static Directory? dir;
  static Isar? isar;

  static Future<void> init() async {
    dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [DlProductSchema, DlCustomerSchema, DlTransactionSchema,DlSuplayerSchema,DlIncomeSchema],
      directory: dir!.path,
    );
  }
}
