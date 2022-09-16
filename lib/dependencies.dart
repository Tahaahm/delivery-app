import 'package:delivery_app/Carts_controller/cart_controller.dart';
import 'package:delivery_app/api_client.dart/api_client.dart';
import 'package:delivery_app/app_const/app_const.dart';
import 'package:delivery_app/controllers/besti_controller.dart';
import 'package:delivery_app/controllers/intro_controller.dart';
import 'package:delivery_app/controllers/offer_controller.dart';
import 'package:delivery_app/repo/besti_repo.dart';
import 'package:delivery_app/repo/intro_repo.dart';
import 'package:delivery_app/repo/offer_repo.dart';

import 'package:get/get.dart';

Future<void> inital() async {
  Get.lazyPut(() => ApiClient(urlBasee: AppConst.BASE_URL));

  //all controllers
  Get.lazyPut(() => BestiController(popularRepo: Get.find()));
  Get.lazyPut(() => OfferController(offerRepo: Get.find()));
  Get.lazyPut(() => IntroController(introRepo: Get.find()));
  Get.lazyPut(() => CartController());

  //all repo
  Get.lazyPut(() => BestiRepo(apiClient: Get.find()));
  Get.lazyPut(() => OfferRepo(apiClient: Get.find()));
  Get.lazyPut(() => IntroRepo(apiClient: Get.find()));
}
