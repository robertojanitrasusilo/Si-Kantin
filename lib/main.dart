import 'package:flutter/material.dart';
import 'package:sikantin/views/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      home: SignInPage(),
    );
  }
}

//* Variable buat ngatur state pada widget
Size? ratioScreenSize;
bool isSeePasword = false;
bool isToSignUp = false;
bool isChecked = false;
bool seePasword = false;
