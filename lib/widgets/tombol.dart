// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sikantin/theme.dart';

class Tombol extends StatelessWidget {
  VoidCallback onPressed;
  Widget childContent;
  ButtonStyle styleButton;
  Tombol({
    Key? key,
    required this.onPressed,
    required this.childContent,
    required this.styleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed, child: childContent, style: styleButton);
  }
}
