import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:cashier_mini/app/feature/data/transaction/local_transaction.dart';

class UsecaseGetsTransaction {
  static Future<List<DlTransaction>> call({int offset = 0}) async {
    final res = await LocalTransaction.gets(offset: offset, limit: 10);
    return res;
  }
}
