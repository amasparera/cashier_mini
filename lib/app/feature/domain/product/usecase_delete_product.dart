import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/product/local_product.dart';

class UsecaseDeleteProduct {
  static Future<MProduct> call(MProduct data) async {
    final res = await LocalProduct.delete(data: data.toDatabaleLocal());
    return res.toMProduct();
  }
}
