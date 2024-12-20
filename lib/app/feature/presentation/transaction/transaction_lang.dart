// ignore_for_file: non_constant_identifier_names

mixin TransactionLang {
  // base
  static const String _base = 'transaction/';

  // list
  static String select_product = '${_base}select_product';

  // detail
  static String detail_title = '${_base}detail_title';

  static Map<String, String> messageID = {select_product: 'Pilih Produk', detail_title: 'Detail Produk'};

  static Map<String, String> messageEN = {select_product: 'Select Product', detail_title: 'Detail Product'};
}
