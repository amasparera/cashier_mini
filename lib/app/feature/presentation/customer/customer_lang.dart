// ignore_for_file: non_constant_identifier_names

mixin CustomerLang {
  // base
  static const String _base = 'customer/';

  // list
  static String list_title = '${_base}list_title';

// add customer
  static String name_customer = '${_base}name_customer';
  static String information = '${_base}information';
  static String add_title = '${_base}add_title';
  static String fill = '${_base}fill';
  static String unit = '${_base}unit';
  static String price = '${_base}price';
  static String gender = '${_base}gender';
  static String foto = '${_base}foto';
  static String auto_generate = '${_base}auto_generate';

  // detail
  static String detail_title = '${_base}detail_title';

  static Map<String, String> messageID = {
    list_title: 'Pembeli',
    add_title: 'Tambah Pembeli',
    name_customer: 'Nama Pembeli',
    fill: 'Isi',
    unit: 'Satuan',
    price: 'Harga',
    gender: 'Jenis Kelamin',
    foto: 'Foto Pembeli',
    auto_generate: 'Otomatis dibuatkan',
    information: 'Informasi',
    detail_title: 'Detail Pembeli'
  };

  static Map<String, String> messageEN = {
    list_title: 'Customer',
    add_title: 'Add Customer',
    name_customer: 'Name Customer',
    fill: 'Fill',
    unit: 'Unit',
    price: 'Price',
    gender: 'Jenis Kelamin',
    foto: 'Photo Customer',
    auto_generate: 'Auto Generate',
    information: 'Information',
    detail_title: 'Detail Customer'
  };
}
