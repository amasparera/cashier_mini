import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/product/local_product.dart';

class UsecaseGetProduct {
  static Future<MProduct> call(int id) async {
    final res = await LocalProduct.get(id: id);
    return res.toMProduct();
  }
}
