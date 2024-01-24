// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sikantin/theme.dart';

class IconTombol extends StatelessWidget {
  String assetImage;
  VoidCallback pressed;
  IconTombol({
    Key? key,
    required this.assetImage,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      width: 34,
      height: 34,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ]),
      child: Image.asset(assetImage, width: 20),
    );
  }
}
