// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfView extends StatelessWidget {
  const ListOfView({Key? key, required this.img, required this.text})
      : super(key: key);
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              blurRadius: 10,
              spreadRadius: 1),
          BoxShadow(
              color: Colors.white,
              offset: Offset(0, -2),
              blurRadius: 10,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text, style: GoogleFonts.acme(fontSize: 15))
        ],
      ),
    );
  }
}
