import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class BPageViewList extends StatelessWidget {
  const BPageViewList({Key? key, required this.descp, required this.img})
      : super(key: key);
  final String descp;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Lottie.network(img, fit: BoxFit.cover),
        Positioned(
          left: 20,
          right: 20,
          bottom: 15,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 65, right: 60, top: 40),
              child: Text(
                descp,
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
  }
}
