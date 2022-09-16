// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category ",
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return _builder();
              })),
        )
      ],
    );
  }

  Widget _builder() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(55),
              image: DecorationImage(
                  image: AssetImage("assets/images/7.jpg"), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
