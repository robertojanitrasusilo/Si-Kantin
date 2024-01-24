import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sikantin/main.dart';
import 'package:sikantin/theme.dart';
import 'package:sikantin/views/signup_page.dart';
import 'package:sikantin/widgets/fieldtext.dart';
import 'package:sikantin/widgets/icon_tombol.dart';
import 'package:sikantin/widgets/tombol.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    ratioScreenSize = MediaQuery.of(context).size;
    double ratioWidth = ratioScreenSize!.width;
    double ratioHeight = ratioScreenSize!.height;
    return Scaffold(
        //* Build animation ketika ganti page
        body: PageTransitionSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                SharedAxisTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: verticalTransition,
                    child: child),
            //* Biar bisa ngescroll pas keyboard muncul
            child: isToSignUp == false
                ? SingleChildScrollView(
                    child: Stack(
                    children: [
                      //* Background ayam kampus
                      Positioned(
                          top: ratioHeight / 2 - 278,
                          left: (ratioWidth / 2) - 24,
                          child: Image.asset(
                            'assets/test_ayam.png',
                            width: 222.34,
                            height: 208,
                          )),
                      //* Column dan seisinya
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 306),
                            Text('Sign In',
                                style: regularStyle.copyWith(
                                    color: primaryColor, fontSize: 36)),
                            SizedBox(height: 20),
                            //* Textfield
                            // *Login bang
                            FieldText(
                                labelText: "Email",
                                hintText: "Email",
                                isPassword: false,
                                icon: Padding(
                                    padding: EdgeInsets.only(
                                      top: 14,
                                      bottom: 14,
                                    ),
                                    child: Image.asset('assets/user.png'))),
                            SizedBox(height: 20),
                            //* Ingfokan password
                            FieldText(
                              labelText: "Password",
                              hintText: "Password",
                              isPassword: seePasword == true ? false : true,
                              isSeePasword: Padding(
                                  padding: EdgeInsets.only(
                                      top: 13, bottom: 15, right: 15),
                                  child: GestureDetector(
                                    onTap: () => setState(
                                        () => seePasword = !seePasword),
                                    child: seePasword == true
                                        ? Image.asset('assets/see_password.png')
                                        : Image.asset(
                                            'assets/hidden_password.png'),
                                  )),
                            ),
                            //* Remember me
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    side: BorderSide(width: 2, color: grey200),
                                    activeColor: primaryColor,
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text('Keep me logged in',
                                      style: regularStyle.copyWith(
                                          fontSize: 12, color: grey400)),
                                ]),
                            SizedBox(height: 10),
                            //* Tombol Login
                            Tombol(
                              childContent: Text('Sign In',
                                  style:
                                      mediumStyle.copyWith(color: whiteColor)),
                              onPressed: () {},
                              styleButton: primaryButtonStyle,
                            ),
                            SizedBox(height: 60),
                            Center(
                              child: Column(children: [
                                Text('Or sign in with ',
                                    style: regularStyle.copyWith(fontSize: 12)),
                                SizedBox(height: 12),
                                //* Linked Account to socmed
                                Row(children: [
                                  Spacer(),
                                  IconTombol(
                                      assetImage: "assets/google.png",
                                      pressed: () {}),
                                  SizedBox(width: 14),
                                  IconTombol(
                                      assetImage: "assets/apple.png",
                                      pressed: () {}),
                                  SizedBox(width: 14),
                                  IconTombol(
                                      assetImage: "assets/facebook.png",
                                      pressed: () {}),
                                  Spacer(),
                                ])
                              ]),
                            ),
                            SizedBox(height: 40),
                            //* Sign Up
                            Center(
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  isToSignUp = true;
                                  seePasword = false;
                                }),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Dont have an account ?",
                                        style: regularStyle.copyWith(
                                            fontSize: 11, color: Colors.black),
                                        children: [
                                      TextSpan(
                                          text: " Sign Up",
                                          style: mediumStyle.copyWith(
                                              fontSize: 11,
                                              color: primaryColor,
                                              decoration:
                                                  TextDecoration.underline))
                                    ])),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
                : SignUpPage()));
  }
}
