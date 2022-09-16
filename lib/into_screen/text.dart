// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, sized_box_for_whitespace, duplicate_ignore

import 'package:delivery_app/Home.dart';
import 'package:delivery_app/controllers/intro_controller.dart';
import 'package:delivery_app/routes/page_view_list.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen extends StatefulWidget {
  Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool atLastMove = false;
  @override
  Widget build(BuildContext context) {
    PageController _PAGE = PageController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 500,
              child: GetBuilder<IntroController>(
                builder: (controller) {
                  return PageView.builder(
                    itemCount: controller.popularList.length,
                    itemBuilder: (context, index) {
                      return Container(
                          child: Stack(
                        children: [
                          Lottie.network(controller.popularList[index].img!,
                              fit: BoxFit.cover),
                          Positioned(
                            left: 20,
                            right: 20,
                            bottom: 15,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 65, right: 60, top: 40),
                                child: Text(
                                  controller.popularList[index].description!,
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                    },
                    onPageChanged: (value) {
                      setState(() {
                        atLastMove = (value == 3);
                      });
                    },
                    controller: _PAGE,
                  );
                },
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _PAGE.jumpToPage(3);
                },
                child: Text("Skip"),
              ),
              SizedBox(
                width: 20,
              ),
              SmoothPageIndicator(
                controller: _PAGE,
                count: 4,
                effect: WormEffect(dotHeight: 4, dotWidth: 8),
              ),
              SizedBox(
                width: 20,
              ),
              atLastMove
                  ? GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutesHelper.getInitial());
                      },
                      // ignore: prefer_const_constructors
                      child: Text("Done"),
                    )
                  : GestureDetector(
                      onTap: () {
                        _PAGE.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      // ignore: prefer_const_constructors
                      child: Text("Next"),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
// ignore: prefer_const_literals_to_create_immutables
                    // children: [
                    //   BPageViewList(
                    //       descp:
                    //           "when you Eat Street,we'll hook you up with exclusive coupons",
                    //       img:
                    //           "https://assets1.lottiefiles.com/packages/lf20_jcikwtux.json"),
                    //   BPageViewList(
                    //       descp:
                    //           "we make it simple to find the food you crave.Enter your address and let",
                    //       img:
                    //           "https://assets1.lottiefiles.com/packages/lf20_gjmecwii.json"),
                    //   BPageViewList(
                    //       descp:
                    //           "we make food ordering fast, simple and free - no matter if you order",
                    //       img:
                    //           "https://assets2.lottiefiles.com/packages/lf20_hT3ao1usod.json"),
                    //   BPageViewList(
                    //       descp: "Let's Start now",
                    //       img:
                    //           "https://assets1.lottiefiles.com/packages/lf20_cdfjcora.json"),
                    // ],