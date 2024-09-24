import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'app_snackbar.dart';
part 'app_picker.dart';
part 'app_confirm.dart';
part 'app_barcode_scan.dart';

class AppShow {
  ///
  static void snackBar(
    BuildContext context,
    String message, {
    bool useCloseButton = false,
    SnackBarAction? action,
    Duration? duration,
  }) =>
      _AppSnackbar.show(
        context,
        message,
        action: action,
        useCloseButton: useCloseButton,
        duration: duration,
      );

  static Future<dynamic> galeriPicker() async => await _AppPicker.galeriPicker();

  static Future<dynamic> confirmDelete(BuildContext context) async => _AppConfirm.call(context: context);

  static Future<Barcode?> showScanner(BuildContext context) async => _AppBarcodeScan.call(context);
}
