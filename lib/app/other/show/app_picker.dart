part of 'app_show.dart';

class _AppPicker {
  static final ImagePicker _picker = ImagePicker();
  static Future<dynamic> galeriPicker() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    final List<XFile>? files = response.files;
    if (files != null) {
      return files;
    }
  }
}
