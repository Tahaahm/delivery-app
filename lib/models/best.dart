// ignore_for_file: unnecessary_this, unused_field

class Products {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductsModel> _products;
  List<ProductsModel> get products => _products;

  Products(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    this._offset = offset;
    this._typeId = typeId;
    this._products = products;
    this._totalSize = totalSize;
  }

  Products.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductsModel>[];
      json['products'].forEach((v) {
        _products.add(ProductsModel.fromJson(v));
      });
    }
  }
}

class ProductsModel {
  int? id;
  String? name;
  String? img;
  String? description;
  int? price;
  double? stars;
  String? createdAt;
  String? updatedAt;
  int? type;
  String? ingre1;
  String? ingre2;
  String? ingre3;
  String? ingre4;
  String? nameIng1;
  String? nameIng2;
  String? nameIng3;
  String? nameIng4;
  int? quantity;
  String? time;
  bool? isExist;

  ProductsModel(
      {this.id,
      this.name,
      this.img,
      this.description,
      this.price,
      this.stars,
      this.createdAt,
      this.updatedAt,
      this.type,
      this.ingre1,
      this.ingre2,
      this.ingre3,
      this.ingre4,
      this.nameIng1,
      this.nameIng2,
      this.nameIng3,
      this.nameIng4,
      this.quantity,
      this.isExist,
      this.time});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    createdAt = json['created_at'];
    updatedAt = json['updated-at'];
    type = json['type'];
    ingre1 = json['ingre1'];
    ingre2 = json['ingre2'];
    ingre3 = json['ingre3'];
    ingre4 = json['ingre4'];
    nameIng1 = json['nameIng1'];
    nameIng2 = json['nameIng2'];
    nameIng3 = json['nameIng3'];
    nameIng4 = json['nameIng4'];
    time = json['time'];
    quantity = json['quantity'];
    isExist = json['isExist'];
  }
}
