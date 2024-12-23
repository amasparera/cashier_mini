import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/transaction/local_transaction.dart';

class UsecaseCreateTransaction {
  static Future<DlTransaction> call({required Map<MProduct, int> data,MCustomer? customer}) async {
    List<DlTransactionData> transactionData = data.entries.map((e) {
      return e.key.toDlTransactionData()..qty = e.value..totalPrice = e.key.price * e.value;
    }).toList();

    DlTransaction transaction = DlTransaction(
      customer: customer?.toDlTransactionCustomer(),
      data: transactionData,
      amount: transactionData.fold(0, (previousValue, element) => previousValue! + element.totalPrice!),
      date: DateTime.now(),
      totalPrice: transactionData.fold(0, (previousValue, element) => previousValue! + element.totalPrice!),
    );
    final res = await LocalTransaction.add(data: transaction);
    return res;
  }
}
