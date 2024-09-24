import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/product/local_product.dart';

class UsecaseCreateProduct {
  static Future<MProduct> call(MProduct data) async {
    final res = await LocalProduct.add(data: data.toDatabaleLocal());
    return res.toMProduct();
  }
}
