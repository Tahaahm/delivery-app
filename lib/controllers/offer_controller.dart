// ignore_for_file: avoid_print

import 'package:delivery_app/models/offer.dart';
import 'package:delivery_app/repo/offer_repo.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  final OfferRepo offerRepo;
  List<OfferModel> _popularProductList = [];
  List<OfferModel> get popularProductList => _popularProductList;
  Map<int, OfferModel> _items = {};
  OfferController({required this.offerRepo});

  bool _isloading = false;
  bool get isLoading => _isloading;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;
  Future<void> getOfferList() async {
    Response response = await offerRepo.getOfferList();
    if (response.statusCode == 200) {
      _popularProductList = [];

      _popularProductList.addAll(OfferProduct.fromJson(response.body).product);
    }
    _isloading = true;
    update();
  }

  void addQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = _quantity + 1;
    } else {
      _quantity = _quantity - 1;
    }
    update();
  }
}
// void addItems(int quantity, OfferModel product) {
  //   _items.putIfAbsent(
  //     product.id!,
  //     () => OfferModel(
  //         id: product.id,
  //         offer: product.offer,
  //         img: product.img,
  //         fimg: product.fimg,
  //         simg: product.simg,
  //         timg: product.timg,
  //         foimg: product.foimg,
  //         faimg: product.faimg,
  //         //name
  //         fname: product.fname,
  //         sname: product.sname,
  //         tname: product.tname,
  //         foname: product.foname,
  //         faname: product.faname,
  //         //price
  //         fprice: product.fprice,
  //         sprice: product.sprice,
  //         tprice: product.tprice,
  //         foprice: product.foprice,
  //         faprice: product.faprice,
  //         //stars
  //         fstars: product.fstars,
  //         sstars: product.sstars,
  //         tstars: product.tstars,
  //         fostars: product.fostars,
  //         fastars: product.fastars,
  //         quantity: quantity,
  //         time: DateTime.now().toString(),
  //         isExist: true),
  //   );
  //   update();
  // }