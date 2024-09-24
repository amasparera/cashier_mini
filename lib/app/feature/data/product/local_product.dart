import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/entity/database_local/product/dl_product.dart';
import 'package:isar/isar.dart';

class LocalProduct {
  static Future<DlProduct> get({required int id}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.dlProducts.get(id);
    if (res != null) return res;
    throw 'Product tidak ditemukan';
  }

  static Future<List<DlProduct>> gets({int limit = 10, int offset = 0}) async {
    if (AppDatabase.isar == null) AppDatabase.init();

    return await AppDatabase.isar!.dlProducts.where(sort: Sort.desc).anyId().offset(offset).limit(limit).findAll();
  }

  static Future<DlProduct> add({required DlProduct data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.writeTxn(() async => await AppDatabase.isar!.dlProducts.put(data));
    return data..id = res;
  }

  static Future<DlProduct> update({required DlProduct data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlProducts.put(data));
    return data;
  }

  static Future<DlProduct> delete({required DlProduct data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlProducts.delete(data.id!));
    return data;
  }
}
