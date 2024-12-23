// ignore_for_file: non_constant_identifier_names

mixin SuplayerLang {
  // base
  static const String _base = 'suplayer/';

  // list
  static String list_title = '${_base}list_title';

// add suplayer
  static String name_suplayer = '${_base}name_suplayer';
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
    list_title: 'Suplayer',
    add_title: 'Tambah Suplayer',
    name_suplayer: 'Nama Suplayer',
    fill: 'Isi',
    unit: 'Satuan',
    price: 'Harga',
    gender: 'Jenis Kelamin',
    foto: 'Foto Suplayer',
    auto_generate: 'Otomatis dibuatkan',
    information: 'Informasi',
    detail_title: 'Detail Suplayer'
  };

  static Map<String, String> messageEN = {
    list_title: 'Suplayer',
    add_title: 'Add Suplayer',
    name_suplayer: 'Name Suplayer',
    fill: 'Fill',
    unit: 'Unit',
    price: 'Price',
    gender: 'Jenis Kelamin',
    foto: 'Photo Suplayer',
    auto_generate: 'Auto Generate',
    information: 'Information',
    detail_title: 'Detail Suplayer'
  };
}
