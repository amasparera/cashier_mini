class AppValidation {
  static String? required(String? value, String? titleMessage) {
    if (value == null) return '$titleMessage tidak boleh kosong';
    return null;
  }
}
