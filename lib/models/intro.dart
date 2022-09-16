// ignore_for_file: unused_field, unnecessary_this

class IntroProduct {
  int? _typeId;
  int? _totalSize;
  int? _offset;
  late List<IntroModel> _product;
  List<IntroModel> get product => _product;

  IntroProduct(
      {required typeId,
      required totalSize,
      required offset,
      required product}) {
    this._typeId = typeId;
    this._offset = offset;
    this._totalSize = totalSize;
    this._product = product;
  }

  IntroProduct.fromJson(Map<String, dynamic> json) {
    _typeId = json['type_id'];
    _totalSize = json['total_size'];
    _offset = json['offset'];
    if (json['product'] != null) {
      _product = <IntroModel>[];
      json['product'].forEach((v) {
        _product.add(IntroModel.fromJson(v));
      });
    }
  }
}

class IntroModel {
  int? id;
  String? img;
  String? description;

  IntroModel({this.id, this.img, this.description});

  IntroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    description = json['description'];
  }
}
