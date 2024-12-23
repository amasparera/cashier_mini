// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cashier_mini/app/entity/database_local/suplayer/dl_suplayer.dart';
import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:equatable/equatable.dart';

class MSuplayer extends Equatable {
  final int? idLocal;
  final String? idServer;
  final String name;
  final String? phone;
  final String? addess;

  const MSuplayer({
    this.idLocal,
    this.idServer,
    required this.name,
    this.phone,
    required this.addess,
  });

  @override
  List<Object?> get props {
    return [
      idLocal,
      idServer,
      name,
      phone,
      addess,
    ];
  }

  MSuplayer copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? phone,
    String? addess,
  }) {
    return MSuplayer(
      idLocal: idLocal ?? this.idLocal,
      idServer: idServer ?? this.idServer,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      addess: addess ?? this.addess,
    );
  }

  DlSuplayer toDatabaleLocal() {
    return DlSuplayer(
      addess: addess,
      phone: phone,
      id: idLocal,
      idServer: idServer,
      name: name,
    );
  }

  DlTransactionSuplayer toDlTransactionSuplayer() {
    return DlTransactionSuplayer(
      addess: addess,
      phone: phone,
      idLocal: idLocal?.toString(),
      idServer: idServer,
      name: name,
    );
  }
}
