// Design of the theme
import 'package:flutter/material.dart';
import 'package:sikantin/main.dart';
import 'package:sikantin/views/signin_page.dart';
// 1. Color

Color whiteColor = const Color(0xFFFFFFFF);
Color creamColor = const Color(0xFFFECDA6);
Color yellowColor = const Color(0xFFFF9130);
Color primaryColor = const Color(0xFFFF5B22);
Color grey200 = const Color(0xFFBDB7B6);
Color grey300 = const Color(0xFF9A908E);
Color grey400 = const Color(0xFF746C6B);

// 2. Fontweight of textstyle
TextStyle regularStyle = const TextStyle(fontWeight: FontWeight.w400);
TextStyle mediumStyle = const TextStyle(fontWeight: FontWeight.w500);
TextStyle semiBoldStyle = const TextStyle(fontWeight: FontWeight.w600);
TextStyle boldStyle = const TextStyle(fontWeight: FontWeight.w700);

// 3. Button Style
ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  fixedSize: Size(ratioScreenSize!.width - (24 * 2), 39),
  backgroundColor: primaryColor,
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  shadowColor: Colors.black,
  elevation: 7,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
ButtonStyle iconStyleButton = ElevatedButton.styleFrom(
  fixedSize: Size(34, 34),
  backgroundColor: primaryColor,
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  shadowColor: Colors.black,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);
