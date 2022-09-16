// ignore_for_file: prefer_const_constructors, unused_import

import 'package:delivery_app/controllers/offer_controller.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:delivery_app/widget/explaining_detials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferDetailsExpalining extends StatelessWidget {
  const OfferDetailsExpalining({Key? key, required this.pageId})
      : super(key: key);
  final int pageId;
  @override
  Widget build(BuildContext context) {
    var products = Get.find<OfferController>().popularProductList[pageId];
    return Scaffold(
      body: Stack(children: [
        //background Amber
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: 280,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(products.faimg!), fit: BoxFit.cover)),
          ),
        ),
        // Icons
        Positioned(
          left: 15,
          right: 15,
          top: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        //body
        Positioned(
          left: 0,
          right: 0,
          top: 210,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
                topLeft: Radius.circular(45),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "whats",
                        style: GoogleFonts.satisfy(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.alarm_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              "50 min",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star_outline,
                              color: Colors.amber,
                            ),
                            Text(
                              "4.3",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.fire_extinguisher,
                              color: Colors.red,
                            ),
                            Text(
                              "325 kcal",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        height: 50,
                        width: 250,
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "\$${""}",
                                  style: GoogleFonts.lato(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.remove),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "1",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.add),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Ingrediants",
                      style: GoogleFonts.anekOdia(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About",
                      style: GoogleFonts.anekOdia(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: SingleChildScrollView(
                        child: ExplainingDetails(text: "products.description!"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        //Image Section
      ]),
      // bottomNavigationBar: ThemeBottomBar(),
    );
  }
}
