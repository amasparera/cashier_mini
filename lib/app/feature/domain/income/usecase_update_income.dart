import 'package:cashier_mini/app/entity/model/m_income.dart';
import 'package:cashier_mini/app/feature/data/income/local_income.dart';

class UsecaseUpdateIncome {
  static Future<MIncome> call(MIncome data) async {
    final res = await LocalIncome.update(data: data.toDlIncome());
    return res.toMIncome();
  }
}
