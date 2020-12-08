class Product {
  int _id;
  String _product_code;
  String _product_name;
  int _discount;
  int _price;
  String _currency;
  String _dimension;
  String _unit;

  // konstruktor versi 1
  Product(this._product_code, this._dimension, this._discount, this._unit, this._id,this._price,this._currency,this._product_name);

  // konstruktor versi 2: konversi dari Map ke Contact
  Product.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._product_name = map['product_name'];
    this._product_code = map['product_code'];
    this._dimension = map['dimension'];
    this._price = map['price'];
    this._currency = map['currency'];

    this._discount = map['discount'];

    this._unit = map['unit'];
  }

  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;

  String get product_name => _product_name;
  String get product_code => _product_code;
  String get dimension => _dimension;
  String get currency => _currency;
  int get discount => _discount;
  int get price => _price;
  String get unit => _unit;

  // setter
  set product_name(String value) {
    _product_name = value;
  }
  set product_code(String value) {
    _product_code = value;
  }
  set dimension(String value) {
    _dimension = value;
  }
  set currency(String value) {
    _currency = value;
  }
  set discount(int value) {
    _discount = value;
  }
  set price(int value) {
    _price = value;
  }
  set unit(String value) {
    _unit = value;
  }


  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['product_code'] = product_code;
    map['product_name'] = product_name;
    map['price'] = price;
    map['currency'] = currency;
    map['discount'] = discount;
    map['dimension'] = dimension;
    map['unit'] = unit;
    return map;
  }
}
