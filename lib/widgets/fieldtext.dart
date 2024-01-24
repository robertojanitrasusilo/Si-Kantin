// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sikantin/theme.dart';

// ignore: must_be_immutable
class FieldText extends StatelessWidget {
  Widget? icon;
  Widget? isSeePasword;
  String hintText;
  String? labelText;
  bool isPassword;
  FieldText({
    Key? key,
    this.icon,
    this.isSeePasword,
    required this.hintText,
    this.labelText,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        style: mediumStyle.copyWith(color: primaryColor),
        cursorColor: primaryColor,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 2,
          ),
          prefixIcon: icon,
          suffixIcon: isSeePasword,
          labelText: labelText,
          hintText: hintText,
          floatingLabelStyle: mediumStyle.copyWith(
            fontSize: 14,
            color: primaryColor,
          ),
          hintStyle: mediumStyle.copyWith(fontSize: 14, color: grey200),
          labelStyle: mediumStyle.copyWith(fontSize: 14, color: grey200),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: grey200, width: 2),
          ),
          //* Border saat di klik
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
