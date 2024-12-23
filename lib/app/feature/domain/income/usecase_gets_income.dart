import 'package:cashier_mini/app/entity/model/m_income.dart';
import 'package:cashier_mini/app/feature/data/income/local_income.dart';

class UsecaseGetsIncome {
  static Future<List<MIncome>> call({int offset = 0}) async {
    final res = await LocalIncome.gets(offset: offset, limit: 10);
    return res.map((element) => element.toMIncome()).toList();
  }
}
