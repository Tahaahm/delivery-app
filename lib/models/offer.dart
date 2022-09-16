class OfferProduct {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<OfferModel> _product;
  List<OfferModel> get product => _product;

  OfferProduct(
      {required totalSize,
      required typeId,
      required offset,
      required product}) {
    this._totalSize = totalSize;
    this._product = product;
    this._typeId = typeId;
    this._offset = offset;
  }

  OfferProduct.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['product'] != null) {
      _product = <OfferModel>[];
      json['product'].forEach((v) {
        _product.add(OfferModel.fromJson(v));
      });
    }
  }
}

class OfferModel {
  int? id;
  double? offer;
  String? img;
  String? fimg;
  String? simg;
  String? timg;
  String? foimg;
  String? faimg;
  String? fname;
  String? sname;
  String? tname;
  String? foname;
  String? faname;
  int? fprice;
  int? sprice;
  int? tprice;
  int? foprice;
  int? faprice;
  int? typeId;
  double? fstars;
  double? sstars;
  double? tstars;
  double? fostars;
  double? fastars;
  int? quantity;
  String? time;
  bool? isExist;

  OfferModel(
      {this.id,
      this.offer,
      this.img,
      this.fimg,
      this.simg,
      this.timg,
      this.foimg,
      this.faimg,
      this.fname,
      this.sname,
      this.tname,
      this.foname,
      this.faname,
      this.fprice,
      this.sprice,
      this.tprice,
      this.foprice,
      this.faprice,
      this.typeId,
      this.fstars,
      this.sstars,
      this.tstars,
      this.fostars,
      this.fastars,
      this.quantity,
      this.isExist,
      this.time});

  OfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    offer = json['offer'];
    img = json['img'];
    fimg = json['fimg'];
    simg = json['simg'];
    timg = json['timg'];
    foimg = json['foimg'];
    faimg = json['faimg'];
    fname = json['fname'];
    sname = json['sname'];
    tname = json['tname'];
    foname = json['foname'];
    faname = json['faname'];
    fprice = json['fprice'];
    sprice = json['sprice'];
    tprice = json['tprice'];
    foprice = json['foprice'];
    faprice = json['faprice'];
    typeId = json['type_id'];
    fstars = json['fstars'];
    sstars = json['sstars'];
    tstars = json['tstars'];
    fostars = json['fostars'];
    fastars = json['fastars'];
    quantity = json['quantity'];
    time = json['time'];
    isExist = json['isExist'];
  }
}
