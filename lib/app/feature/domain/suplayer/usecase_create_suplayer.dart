import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/data/suplayer/local_suplayer.dart';

class UsecaseCreateSuplayer {
  static Future<MSuplayer> call(MSuplayer data) async {
    final res = await LocalSuplayer.add(data: data.toDatabaleLocal());
    return res.toMSuplayer();
  }
}
