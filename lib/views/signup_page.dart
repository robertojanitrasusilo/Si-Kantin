import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sikantin/main.dart';
import 'package:sikantin/theme.dart';
import 'package:sikantin/views/signin_page.dart';
import 'package:sikantin/widgets/fieldtext.dart';
import 'package:sikantin/widgets/icon_tombol.dart';
import 'package:sikantin/widgets/tombol.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    //* Build animation ketika ganti page
    return PageTransitionSwitcher(
        duration: Duration(seconds: 1),
        reverse: true,
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: verticalTransition,
              child: child,
            ),
        child: isToSignUp == false
            ? SignInPage()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 186),
                        Text('Sign Up',
                            style: mediumStyle.copyWith(
                                fontSize: 36, color: primaryColor)),
                        SizedBox(height: 20),
                        //* Textfield
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
                        FieldText(
                            labelText: "Name",
                            hintText: "Name",
                            isPassword: false,
                            icon: Padding(
                                padding: EdgeInsets.only(
                                  top: 14,
                                  bottom: 14,
                                ),
                                child: Image.asset('assets/user.png'))),
                        SizedBox(height: 20),
                        FieldText(
                            labelText: "Password",
                            hintText: "Password",
                            isPassword: isSeePasword == true ? false : true,
                            isSeePasword: Padding(
                                padding: EdgeInsets.only(
                                  top: 14,
                                  bottom: 14,
                                ),
                                child: GestureDetector(
                                  onTap: () => setState(
                                      () => isSeePasword = !isSeePasword),
                                  child: isSeePasword == true
                                      ? Image.asset('assets/see_password.png')
                                      : Image.asset(
                                          'assets/hidden_password.png'),
                                ))),
                        SizedBox(height: 20),
                        FieldText(
                            labelText: "Confirm Password",
                            hintText: "Confirm Password",
                            isPassword: isSeePasword == true ? true : false,
                            isSeePasword: Padding(
                                padding: EdgeInsets.only(
                                  top: 14,
                                  bottom: 14,
                                ),
                                child: GestureDetector(
                                  onTap: () => setState(
                                      () => isSeePasword = !isSeePasword),
                                  child: isSeePasword == true
                                      ? Image.asset('assets/see_password.png')
                                      : Image.asset(
                                          'assets/hidden_password.png'),
                                ))),
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
                          childContent: Text('Sign Up',
                              style: mediumStyle.copyWith(color: whiteColor)),
                          onPressed: () {},
                          styleButton: primaryButtonStyle,
                        ),
                        SizedBox(height: 60),
                        Center(
                          child: Column(children: [
                            Text('Or sign up with ',
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
                        //* Sign In
                        Center(
                          child: GestureDetector(
                            onTap: () => setState(() {
                              isToSignUp = false;
                              isSeePasword = false;
                            }),
                            child: RichText(
                                text: TextSpan(
                                    text: "Already have an account ?",
                                    style: regularStyle.copyWith(
                                        fontSize: 11, color: Colors.black),
                                    children: [
                                  TextSpan(
                                      text: " Sign In",
                                      style: mediumStyle.copyWith(
                                          fontSize: 11,
                                          color: primaryColor,
                                          decoration: TextDecoration.underline))
                                ])),
                          ),
                        )
                      ]),
                ),
              ));
  }
}
