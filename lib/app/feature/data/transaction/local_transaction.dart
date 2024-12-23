import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:isar/isar.dart';

class LocalTransaction {
  static Future<DlTransaction> add({required DlTransaction data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.writeTxn(() async => await AppDatabase.isar!.dlTransactions.put(data));
    return data..id = res;
  }

  static Future<List<DlTransaction>> gets({int limit = 10, int offset = 0}) async {
    if (AppDatabase.isar == null) AppDatabase.init();

    return await AppDatabase.isar!.dlTransactions.where(sort: Sort.desc).anyId().offset(offset).limit(limit).findAll();
  }
}