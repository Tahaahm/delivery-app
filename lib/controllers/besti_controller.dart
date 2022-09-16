// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_final_fields, unused_field, unused_local_variable

import 'package:delivery_app/Carts_controller/cart_controller.dart';
import 'package:delivery_app/models/best.dart';
import 'package:delivery_app/repo/besti_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestiController extends GetxController {
  final BestiRepo popularRepo;
  List<ProductsModel> _PizzapopularProductList = [];
  List<ProductsModel> get popularProductList => _PizzapopularProductList;
  BestiController({required this.popularRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _quantity + _inCartItems;
  late CartController _cart;

  Future<void> getPopularControllerList() async {
    Response response = await popularRepo.getBestiList();

    if (response.statusCode == 200) {
      _PizzapopularProductList = [];

      _PizzapopularProductList.addAll(
          Products.fromJson(response.body).products);
    }
    _isLoading = true;
    update();
  }

  void addQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar("Item Count", "you can't reduce more",
          colorText: Colors.white, backgroundColor: Colors.black);
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar("Item Count", "you can't add more",
          colorText: Colors.white, backgroundColor: Colors.black);
      return 20;
    }
    return quantity;
  }

  void productInital(CartController cart, ProductsModel product) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;

    var isExisted = false;
    isExisted = _cart.isExist(product);
    if (isExisted) {
      _inCartItems = _cart.setQuantity(product);
    }
  }

  void addItems(ProductsModel product) {
    _cart.addItems(_quantity, product);
    _inCartItems = 0;
    _inCartItems = _cart.setQuantity(product);
    update();
  }
}
