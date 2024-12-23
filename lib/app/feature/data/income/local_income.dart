import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/entity/database_local/income/dl_income.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:isar/isar.dart';

class LocalIncome {
  static Future<DlIncome> update({required DlIncome data}) async {
    if (AppDatabase.isar == null) AppDatabase.init();
    final res = await AppDatabase.isar!.writeTxn(() async => await AppDatabase.isar!.dlIncomes.put(data..setId()));
    return data..id = res;
  }

  static Future<List<DlIncome>> gets({int limit = 10, int offset = 0}) async {
    if (AppDatabase.isar == null) AppDatabase.init();

    return await AppDatabase.isar!.dlIncomes.where(sort: Sort.desc).anyId().offset(offset).limit(limit).findAll();
  }

  static Future<DlIncome> get() async {
    if (AppDatabase.isar == null) AppDatabase.init();
    DateTime dateNow = DateTime.now().copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    final res = await AppDatabase.isar!.dlIncomes.filter().idDayEqualTo(dateNow.formatId()).findFirst();
    if (res != null) {
      return res;
    } else {
      final data = DlIncome(
        totalIncome: 0,
        totalOutcome: 0,
        totalProfit: 0,
        dateCreated: dateNow,
      );
      return await update(data: data);
    }
  }

  static Future<double> getSumIncomeTotal() async {
    if (AppDatabase.isar == null) AppDatabase.init();
    return await AppDatabase.isar!.dlIncomes.where().totalIncomeProperty().sum();
  }

  static Future<double> getSumOutcomeTotal() async {
    if (AppDatabase.isar == null) AppDatabase.init();
    return await AppDatabase.isar!.dlIncomes.where().totalOutcomeProperty().sum();
  }

  static Future<double> getSumProfitTotal() async {
    if (AppDatabase.isar == null) AppDatabase.init();
    return await AppDatabase.isar!.dlIncomes.where().totalProfitProperty().sum();
  }
}
