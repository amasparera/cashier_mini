import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/entity/database_local/suplayer/dl_suplayer.dart';
import 'package:isar/isar.dart';

class LocalSuplayer {
  static Future<DlSuplayer> get({required int id}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.dlSuplayers.get(id);
    if (res != null) return res;
    throw 'SuplayerDlSuplayer tidak ditemukan';
  }

  static Future<List<DlSuplayer>> gets({int limit = 15, int offset = 0}) async {
    if (AppDatabase.isar == null) AppDatabase.init();

    return await AppDatabase.isar!.dlSuplayers.where(sort: Sort.desc).anyId().offset(offset).limit(limit).findAll();
  }

  static Future<DlSuplayer> add({required DlSuplayer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.writeTxn(() async => await AppDatabase.isar!.dlSuplayers.put(data));
    return data..id = res;
  }

  static Future<DlSuplayer> update({required DlSuplayer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlSuplayers.put(data));
    return data;
  }

  static Future<DlSuplayer> delete({required DlSuplayer data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    await AppDatabase.isar!.writeTxn(() => AppDatabase.isar!.dlSuplayers.delete(data.id!));
    return data;
  }
}
