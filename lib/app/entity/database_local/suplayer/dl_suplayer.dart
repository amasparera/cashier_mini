// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:isar/isar.dart';

part 'dl_suplayer.g.dart';


@collection
class DlSuplayer {
  Id? id;
  String? idServer;
  String name;
  String? phone;
  String? addess;


  DlSuplayer({
    this.id,
    this.idServer,
    required this.name,
    this.phone,
    required this.addess,
    
  });

  MSuplayer toMSuplayer() {
    return MSuplayer(
      addess: addess,
      phone: phone,
      idLocal: id,
      idServer: idServer,
      name: name,
    );
  }

  DlSuplayer copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? phone,
    String? addess,
  }) {
    return DlSuplayer(
      id: idLocal ?? id,
      idServer: idServer ?? this.idServer,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      addess: addess ?? this.addess,
     
    );
  }
}
