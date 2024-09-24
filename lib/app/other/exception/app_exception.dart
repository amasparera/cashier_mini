// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cashier_mini/app/other/exception/app_exception_key.dart';
import 'package:cashier_mini/app/other/show/app_show.dart';
import 'package:flutter/material.dart';

sealed class AppException implements Exception {
  final String message;
  final String? key;
  final num? statusCode;

  AppException({required this.message, required this.key, required this.statusCode});

  void showSnackBar(BuildContext context) {
    AppShow.snackBar(context, AppExceptionKey.messageByKey(context, key) ?? message, useCloseButton: true);
  }
}

class ServerException extends AppException {
  ServerException({required String message, num? statusCode, String? key}) : super(message: message, key: key, statusCode: statusCode);
}

class ConnectionException extends AppException {
  ConnectionException({required String message, num? statusCode, String? key}) : super(message: message, key: key, statusCode: statusCode);
}

class ClientException extends AppException {
  ClientException({required String message, num? statusCode, String? key}) : super(message: message, key: key, statusCode: statusCode);
}

class DatabaseException extends AppException {
  DatabaseException({required String message, num? statusCode, String? key}) : super(message: message, key: key, statusCode: statusCode);
}
