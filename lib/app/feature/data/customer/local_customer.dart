import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/entity/database_local/customer/dl_customer.dart';
import 'package:isar/isar.dart';

class LocalCustomer {
  static Future<DlCustomer> get({required int id}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.dlCustomers.get(id);
    if (res != null) return res;
    throw 'Customer tidak ditemukan';
  }

  static Future<List<DlCustomer>> gets({int limit = 15, int offset = 0}) async {
    if (AppDatabase.isar == null) AppDatabase.init();

    return await AppDatabase.isar!.dlCustomers.where(sort: Sort.desc).anyId().offset(offset).limit(limit).findAll();
  }

  static Future<DlCustomer> add({required DlCustomer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.writeTxn(() async => await AppDatabase.isar!.dlCustomers.put(data));
    return data..id = res;
  }

  static Future<DlCustomer> update({required DlCustomer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlCustomers.put(data));
    return data;
  }

  static Future<DlCustomer> delete({required DlCustomer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlCustomers.delete(data.id!));
    return data;
  }
}
