// ignore_for_file: prefer_const_constructors_in_immutables, unused_field, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplainingDetails extends StatefulWidget {
  ExplainingDetails({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<ExplainingDetails> createState() => _ExplainingDetailsState();
}

class _ExplainingDetailsState extends State<ExplainingDetails> {
  late String firstHalf;
  late String secondHalf;
  static double heightText = Get.context!.height / 5.71;
  bool hiddenText = true;

  @override
  void initState() {
    if (widget.text.length > heightText) {
      firstHalf = widget.text.substring(0, heightText.toInt());
      secondHalf =
          widget.text.substring(heightText.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              style: GoogleFonts.anekOdia(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            )
          : Column(
              children: [
                hiddenText
                    ? Text(
                        firstHalf + "...",
                        style: GoogleFonts.anekOdia(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      )
                    : Text(
                        firstHalf + secondHalf,
                        style: GoogleFonts.anekOdia(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        hiddenText ? "Show more" : "Show less",
                        style: GoogleFonts.anekOdia(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.amber,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
