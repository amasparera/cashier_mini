import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/data/suplayer/local_suplayer.dart';

class UsecaseDeleteSuplayer {
  static Future<MSuplayer> call(MSuplayer data) async {
    final res = await LocalSuplayer.delete(data: data.toDatabaleLocal());
    return res.toMSuplayer();
  }
}
