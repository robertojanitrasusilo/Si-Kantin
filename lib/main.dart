import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sikantin/views/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikantin/views/splash_screen.dart';

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
      home: SplashScreen(),
    );
  }
}

//* Variable buat ngatur state pada widget
Size? ratioScreenSize;
bool isSeePasword = false;
bool isToSignUp = false;
bool isChecked = false;
bool seePasword = false;
//* Animasi atas ke bawah
SharedAxisTransitionType verticalTransition = SharedAxisTransitionType.vertical;
//* Animasi kiri ke kanan
SharedAxisTransitionType horizontalTransition =
    SharedAxisTransitionType.horizontal;
