// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, unused_local_variable, unused_import, unrelated_type_equality_checks, duplicate_ignore

import 'package:delivery_app/Home.dart';
import 'package:delivery_app/controllers/intro_controller.dart';
import 'package:delivery_app/routes/page_view_list.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScren extends StatefulWidget {
  const IntroScren({Key? key}) : super(key: key);

  @override
  State<IntroScren> createState() => _IntroScrenState();
}

class _IntroScrenState extends State<IntroScren> {
  @override
  Widget build(BuildContext context) {
    bool onLastPage = false;
    PageController _pageController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 500,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        onLastPage = (value == 2);
                      });
                    },
                    controller: _pageController,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      BPageViewList(
                          descp:
                              "when you Eat Street,we'll hook you up with exclusive coupons",
                          img:
                              "https://assets1.lottiefiles.com/packages/lf20_jcikwtux.json"),
                      BPageViewList(
                          descp:
                              "we make it simple to find the food you crave.Enter your address and let",
                          img:
                              "https://assets1.lottiefiles.com/packages/lf20_gjmecwii.json"),
                      BPageViewList(
                          descp:
                              "we make food ordering fast, simple and free - no matter if you order",
                          img:
                              "https://assets2.lottiefiles.com/packages/lf20_hT3ao1usod.json"),
                      BPageViewList(
                          descp: "Let's Start now",
                          img:
                              "https://assets1.lottiefiles.com/packages/lf20_cdfjcora.json"),
                    ],
                  )),
              Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pageController.jumpToPage(2);
                          },
                          child: Text("Skip"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SmoothPageIndicator(
                            controller: _pageController, count: 4),
                        SizedBox(
                          width: 20,
                        ),
                        onLastPage
                            ? GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                // ignore: prefer_const_constructors
                                child: Text("Done"),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
