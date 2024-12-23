import 'package:cashier_mini/app/entity/model/m_income.dart';
import 'package:cashier_mini/app/feature/data/income/local_income.dart';

class UsecaseGetIncome {
   static Future<MIncome> call() async {
    final res = await LocalIncome.get();
    return res.toMIncome();
  }
}