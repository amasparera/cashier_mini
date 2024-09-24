// ignore_for_file: non_constant_identifier_names

mixin ProductLang {
  // base
  static const String _base = 'product/';

  // list
  static String list_title = '${_base}list_title';

// add product
  static String name_product = '${_base}name_product';
  static String information = '${_base}information';
  static String add_title = '${_base}add_title';
  static String fill = '${_base}fill';
  static String unit = '${_base}unit';
  static String price = '${_base}price';
  static String currency = '${_base}currency';
  static String foto = '${_base}foto';
  static String auto_generate = '${_base}auto_generate';

  // detail
  static String detail_title = '${_base}detail_title';

  static Map<String, String> messageID = {
    list_title: 'Produk',
    add_title: 'Tambah Produk',
    name_product: 'Nama Produk',
    fill: 'Isi',
    unit: 'Satuan',
    price: 'Harga',
    currency: 'Mata Uang',
    foto: 'Foto Produk',
    auto_generate: 'Otomatis dibuatkan',
    information: 'Informasi',
    detail_title: 'Detail Produk'
  };

  static Map<String, String> messageEN = {
    list_title: 'Product',
    add_title: 'Add Product',
    name_product: 'Name Product',
    fill: 'Fill',
    unit: 'Unit',
    price: 'Price',
    currency: 'Currency',
    foto: 'Photo Product',
    auto_generate: 'Auto Generate',
    information: 'Information',
    detail_title: 'Detail Product'
  };
}
