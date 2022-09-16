// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, unnecessary_brace_in_string_interps, prefer_adjacent_string_concatenation, must_be_immutable

import 'package:delivery_app/controllers/offer_controller.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferDetails extends StatelessWidget {
  final int pageId;
  const OfferDetails({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<OfferController>().popularProductList[pageId];

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            //background
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 350,
                decoration: BoxDecoration(color: Colors.amber),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, top: 65),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_offer,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "OFFER ${product.offer}",
                        style: GoogleFonts.snippet(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Icon
            Positioned(
              left: 15,
              right: 15,
              top: 65,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesHelper.getInitial());
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 265,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10, top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                    child: GetBuilder<OfferController>(
                      builder: (controller) {
                        return ListView(
                          children: [
                            //first
                            BuildOfList(
                              count: controller.inCartItems.toString(),
                              Img: product.fimg!,
                              text: product.fname!,
                              price: product.fprice!,
                              offerPrice: product.offer!,
                              pressRemove: () {
                                controller.addQuantity(false);
                              },
                              pressAdd: () {
                                controller.addQuantity(true);
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //Second
                            BuildOfList(
                              count: controller.quantity.toString(),
                              Img: product.simg!,
                              text: product.sname!,
                              price: product.sprice!,
                              offerPrice: product.offer!,
                              pressRemove: () {},
                              pressAdd: () {},
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //Third
                            BuildOfList(
                              count: controller.quantity.toString(),
                              Img: product.timg!,
                              text: product.tname!,
                              price: product.tprice!,
                              offerPrice: product.offer!,
                              pressRemove: () {},
                              pressAdd: () {},
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //Forth
                            BuildOfList(
                              count: controller.quantity.toString(),
                              Img: product.foimg!,
                              text: product.foname!,
                              price: product.foprice!,
                              offerPrice: product.offer!,
                              pressRemove: () {},
                              pressAdd: () {},
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            //Fifth
                            BuildOfList(
                              count: controller.quantity.toString(),
                              Img: product.faimg!,
                              text: product.faname!,
                              price: product.faprice!,
                              offerPrice: product.offer!,
                              pressRemove: () {},
                              pressAdd: () {},
                            ),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        );
                      },
                    )),
              ),
            ),
          ],
        ),
        bottomNavigationBar: GetBuilder<OfferController>(
          builder: (controller) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class BuildOfList extends StatelessWidget {
  BuildOfList(
      {Key? key,
      required this.Img,
      required this.text,
      required this.price,
      required this.offerPrice,
      required this.pressAdd,
      required this.pressRemove,
      required this.count})
      : super(key: key);
  final String Img;
  final String text;
  final int price;
  final double offerPrice;
  final VoidCallback pressAdd;
  final VoidCallback pressRemove;
  final String count;
  int index = 1;
  @override
  Widget build(BuildContext context) {
    var oferprice = price * 0.60;
    return Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: NetworkImage(Img), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              height: 130,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 10, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 22, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${price}" + ".00",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        if (offerPrice == 60.0)
                          Text(
                            "\$${price - oferprice.round()}" + ".00",
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20),
                          )
                        else if (offerPrice == 50.0)
                          Text(
                            "\$${price - price.round() * 0.5}",
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20),
                          )
                        else if (offerPrice == 33)
                          Text(
                            "\$${price - price.round().bitLength * 0.33}",
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Empty
                        Container(),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                  onTap: pressRemove,
                                  child: Icon(Icons.remove)),
                              Text(
                                count.toString(),
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: GestureDetector(
                                  onTap: pressAdd,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
