// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:equatable/equatable.dart';

import 'package:cashier_mini/app/entity/database_local/customer/dl_customer.dart';
import 'package:cashier_mini/app/entity/enums/enum_gander.dart';

class MCustomer extends Equatable {
  final int? idLocal;
  final String? idServer;
  final String name;
  final String? phone;
  final String? addess;
  final EnumGender gender;

  const MCustomer({
    this.idLocal,
    this.idServer,
    required this.name,
    this.phone,
    required this.addess,
    required this.gender,
  });

  @override
  List<Object?> get props {
    return [
      idLocal,
      idServer,
      name,
      phone,
      addess,
      gender,
    ];
  }

  MCustomer copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? phone,
    String? addess,
    EnumGender? gender,
  }) {
    return MCustomer(
      idLocal: idLocal ?? this.idLocal,
      idServer: idServer ?? this.idServer,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      addess: addess ?? this.addess,
      gender: gender ?? this.gender,
    );
  }

  DlCustomer toDatabaleLocal() {
    return DlCustomer(
      addess: addess,
      gender: gender,
      phone: phone,
      id: idLocal,
      idServer: idServer,
      name: name,
    );
  }

  DlTransactionCustomer toDlTransactionCustomer() {
    return DlTransactionCustomer(
      addess: addess,
      gender: gender.value,
      phone: phone,
      idLocal: idLocal?.toString(),
      idServer: idServer,
      name: name,
    );
  }
}
