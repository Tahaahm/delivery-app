import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeBottomBar extends StatelessWidget {
  const ThemeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 10, sigmaY: 10, tileMode: TileMode.decal),
          child: Container(
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
