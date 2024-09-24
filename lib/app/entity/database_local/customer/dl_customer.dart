// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

import 'package:cashier_mini/app/entity/enums/enum_gander.dart';
import 'package:cashier_mini/app/entity/model/m_customer.dart';

part 'dl_customer.g.dart';

@collection
class DlCustomer {
  Id? id;
  String? idServer;
  String name;
  String? phone;
  String? addess;
  @enumerated
  EnumGender gender;

  DlCustomer({
    this.id,
    this.idServer,
    required this.name,
    this.phone,
    required this.addess,
    required this.gender,
  });

  MCustomer toMCustomer() {
    return MCustomer(
      addess: addess,
      gender: gender,
      phone: phone,
      idLocal: id,
      idServer: idServer,
      name: name,
    );
  }

  DlCustomer copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? phone,
    String? addess,
    EnumGender? gender,
  }) {
    return DlCustomer(
      id: idLocal ?? id,
      idServer: idServer ?? this.idServer,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      addess: addess ?? this.addess,
      gender: gender ?? this.gender,
    );
  }
}
