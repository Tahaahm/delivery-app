// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors

import 'package:delivery_app/Home.dart';
import 'package:delivery_app/controllers/besti_controller.dart';
import 'package:delivery_app/controllers/intro_controller.dart';
import 'package:delivery_app/controllers/offer_controller.dart';

import 'package:delivery_app/details/best_choice.dart';
import 'package:delivery_app/into_screen/intro_screen.dart';
import 'package:delivery_app/offer_details/offer_details.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dep.inital();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<BestiController>().getPopularControllerList();
    Get.find<OfferController>().getOfferList();
    Get.find<IntroController>().getIntroControllerList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BestChoiceDetails(),
      // home: IntroScren(),
      initialRoute: RoutesHelper.introScreen,
      getPages: RoutesHelper.routes,
    );
  }
}
//https://cdn.grabon.in/gograbon/images/category/1546252575451.png


