// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, unused_import

import 'package:delivery_app/controllers/offer_controller.dart';
import 'package:delivery_app/models/offer.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovePageDisCout extends StatefulWidget {
  const MovePageDisCout({Key? key}) : super(key: key);

  @override
  State<MovePageDisCout> createState() => _MovePageDisCoutState();
}

class _MovePageDisCoutState extends State<MovePageDisCout> {
  @override
  Widget build(BuildContext context) {
    double currentIndex = 0;
    PageController controller = PageController();
    return Column(
      children: [
        Container(
            height: 150,
            child: GetBuilder<OfferController>(
              builder: (products) {
                return products.isLoading
                    ? PageView.builder(
                        allowImplicitScrolling: true,
                        itemCount: products.popularProductList.length,
                        controller: controller,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                    RoutesHelper.getOfferDetails(index));
                              },
                              child: _builder(
                                  index, products.popularProductList[index]));
                        }))
                    : Center(
                        child: CircularProgressIndicator(
                        color: Colors.orange,
                      ));
              },
            )),
        SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: WormEffect(
              activeDotColor: Colors.orange,
              dotHeight: 10,
              dotWidth: 10,
              type: WormType.thin,
              radius: 10),
        )
      ],
    );
  }

  Widget _builder(int index, OfferModel offer) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: index.isEven ? Colors.grey.shade900 : Colors.orange.shade800,
        image:
            DecorationImage(image: NetworkImage(offer.img!), fit: BoxFit.cover),
      ),
    );
  }
}
