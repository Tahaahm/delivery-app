// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProduct extends StatelessWidget {
  const TopProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.grey[300],
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 8,
          itemBuilder: ((context, index) {
            return _builder();
          })),
    );
  }

  Widget _builder() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[400],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 140,
            margin: EdgeInsets.only(left: 20, right: 10, top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Grab 15% OFF",
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "FROM Grill Chicken",
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Restro",
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.3",
                      style: GoogleFonts.lato(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "-51/min",
                      style: GoogleFonts.lato(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: Text(
                    "\$10.99",
                    style: GoogleFonts.abel(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
