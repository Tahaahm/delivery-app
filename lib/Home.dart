// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:delivery_app/list_of_body/best_choice.dart';
import 'package:delivery_app/list_of_body/category_section.dart';
import 'package:delivery_app/list_of_body/move_page_discount.dart';
import 'package:delivery_app/list_of_body/recommended.dart';
import 'package:delivery_app/list_of_body/special_offer.dart';
import 'package:delivery_app/list_of_body/top_product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final style = TextStyle(
      fontSize: 20, color: Colors.black45, fontWeight: FontWeight.bold);

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Queen, NY, USA",
          style: GoogleFonts.roboto(textStyle: style),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 8),
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/294067757_801186697555681_6364077354576760190_n.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 60,
              ),
              child: Text(
                "Find Good food around you",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white60,
                  border: Border.all(color: Colors.white)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search For Your Fav Food"),
                textAlignVertical: TextAlignVertical.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MovePageDisCout(),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                "Category ",
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 110,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              left: 10,
                            ),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(55),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/7.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(left: 30, bottom: 0, child: Text("Name")),
                        ],
                      );
                    }))),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 110,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 10,
                        ),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(55),
                            image: DecorationImage(
                                image: AssetImage("assets/images/7.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(left: 30, bottom: 0, child: Text("Name")),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                "Recommended",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Recommanded()),
            SizedBox(
              height: 30,
            ),
            SpecialOffer(),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Best Choice",
                style:
                    GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BestChoice(),
            Container(
              color: Colors.grey[300],
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 25),
                child: Text(
                  "Top Product",
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: TopProduct(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.orange,
          showSelectedLabels: true,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Account"),
          ]),
    );
  }
}
