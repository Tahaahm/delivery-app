// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, unused_element

import 'package:delivery_app/models/best.dart';

import 'package:get/get.dart';

class CartController extends GetxController {
  Map<int, ProductsModel> _items = {};

  void addItems(int quantity, ProductsModel product) {
    print("the quantity is " +
        quantity.toString() +
        "the id is " +
        product.id.toString());
    _items.putIfAbsent(
      product.id!,
      () => ProductsModel(
        id: product.id,
        name: product.name,
        img: product.img,
        description: product.description,
        price: product.price,
        stars: product.stars,
        type: product.type,
        time: DateTime.now().toString(),
        quantity: quantity,
        isExist: true,
      ),
    );
  }

  bool isExist(ProductsModel product) {
    if (_items.containsKey(product.id!)) {
      return true;
    } else {
      return false;
    }
  }

  int setQuantity(ProductsModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
