// ignore_for_file: file_names

import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/data/suplayer/local_suplayer.dart';

class UsecaseGetsSuplayer {
  static Future<List<MSuplayer>> call({int offset = 0}) async {
    final res = await LocalSuplayer.gets(offset: offset, limit: 10);
    return res.map((element) => element.toMSuplayer()).toList();
  }
}
