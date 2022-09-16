// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors, unused_import

import 'package:delivery_app/Home.dart';
import 'package:delivery_app/details/best_choice.dart';
import 'package:delivery_app/details/offer_details.dart';
import 'package:delivery_app/into_screen/intro_screen.dart';
import 'package:delivery_app/into_screen/text.dart';
import 'package:delivery_app/list_of_body/best_choice.dart';
import 'package:delivery_app/offer_details/offer_details.dart';
import 'package:get/get.dart';

class RoutesHelper {
  // all
  static const String inital = "/";
  static const String bestChoiceDetails = "/best-choice-details";
  static const String offerDetails = "/offer-details";
  static const String offerDetialsExplaining = "/offer-details-explaining";
  static const String introScreen = "/intro-screen";

  //get
  static String getInitial() => "$inital";
  static String getBestChoiceDetails(int pageId) =>
      "$bestChoiceDetails?pageId=$pageId";
  static String getOfferDetails(int pageId) => '$offerDetails?pageId=$pageId';
  static String getOfferDetailsExplaining(int pageId) =>
      '$offerDetialsExplaining?pageId=$pageId';
  static String getIntroScreen() => '$introScreen';

  //List
  static List<GetPage> routes = [
    GetPage(
        name: inital,
        page: () {
          return Home();
        }),
    GetPage(
        name: bestChoiceDetails,
        page: () {
          var pageId = Get.parameters['pageId'];
          return BestChoiceDetails(
            pageId: int.parse(pageId!),
          );
        }),
    GetPage(
        name: offerDetails,
        page: () {
          var pageId = Get.parameters['pageId'];
          return OfferDetails(
            pageId: int.parse(pageId!),
          );
        }),
    GetPage(
        name: offerDetialsExplaining,
        page: () {
          var pageId = Get.parameters['pageId'];
          return OfferDetailsExpalining(
            pageId: int.parse(pageId!),
          );
        }),
    GetPage(name: introScreen, page: () => Screen())
  ];
}
