// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:delivery_app/controllers/besti_controller.dart';
import 'package:delivery_app/models/best.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BestChoice extends StatelessWidget {
  const BestChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: GetBuilder<BestiController>(
          builder: (controller) {
            return ListView.builder(
                itemCount: controller.popularProductList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesHelper.getBestChoiceDetails(index));
                    },
                    child: Stack(
                      children: [
                        _Body(index, controller.popularProductList[index]),
                        _visable(controller.popularProductList[index]),
                      ],
                    ),
                  );
                }));
          },
        ));
  }

  Widget _visable(ProductsModel producs) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: Positioned(
        child: Container(
          height: 160,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(
                    producs.img!,
                  ),
                  fit: BoxFit.contain)),
        ),
      ),
    );
  }

  Widget _Body(int index, ProductsModel products) {
    return Positioned(
      bottom: 80,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        height: 240,
        width: 250,
        decoration: BoxDecoration(
          color: index.isEven ? Colors.orange[100] : Colors.pink[100],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                products.name!,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  "\$${products.price}",
                  style: GoogleFonts.abel(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
