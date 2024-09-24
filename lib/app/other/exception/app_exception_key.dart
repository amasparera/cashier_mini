// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

mixin AppExceptionKey {
  static const String _API_200 = 'API_200';
  //
  static Map<String, String> messageID = {_API_200: 'Berhasil'};
  static Map<String, String> messageEN = {_API_200: 'Succes'};
  //
  static String? messageByKey(BuildContext context, String? key) {
    return key?.getString(context);
  }
}
