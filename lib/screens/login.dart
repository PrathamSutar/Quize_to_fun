import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_to_fun/screens/forgotpassOTP.dart';
import 'package:quiz_to_fun/screens/forgotpasswordscreen.dart';
import 'package:quiz_to_fun/screens/registerscreen.dart';
import 'package:quiz_to_fun/widgets/cutomtext.dart';

import '../colors/colors.dart';
import '../widgets/textfield.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _LogEmailctr = TextEditingController();
    final TextEditingController _LogPassctr = TextEditingController();

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 60, bottom: 30),
                  child: Container(
                    child: Image.asset(
                      "Assets/images/templogo.png",
                      height: 100,
                      width: 208,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customtext(
                        text: "Login",
                        fontsize: 24,
                        color: whitecolor,
                        fontWeight: FontWeight.w500,
                        fontfamily: 'Inter'),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      color: textcolor,
                      text: "Enter your email or username to login.",
                      fontWeight: FontWeight.w400,
                      fontfamily: 'Inter',
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w500,
                        fontfamily: 'Inter',
                        text: "User Name or email"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(
                      Controller: _LogEmailctr,
                      hinttext: "@example",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w600,
                        fontfamily: 'Inter',
                        text: "Password"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(
                        Controller: _LogPassctr,
                        hinttext: "Enter Your Password"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => forgotpasswordscreen(),
                              )),
                          child: customtext(
                              fontsize: 14,
                              color: purpulecolor,
                              fontWeight: FontWeight.w700,
                              fontfamily: 'Nunito Sans',
                              text: "Forgot Password"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(),
                        height: 50,
                        width: 350,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF313033)),
                            ),
                            onPressed: () {},
                            child: Text("Continue")),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customtext(
                            fontsize: 14,
                            color: whitecolor,
                            fontWeight: FontWeight.w400,
                            fontfamily: 'Inter',
                            text: "or log in with"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border:
                                Border.all(width: 1, color: Color(0xFF605D62)),
                          ),
                          height: 50,
                          width: 160,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    "Assets/images/fblogo.png",
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              customtext(
                                  fontsize: 14,
                                  color: whitecolor,
                                  fontWeight: FontWeight.w400,
                                  fontfamily: 'Inter',
                                  text: "Facebook"),
                            ],
                          ),
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  width: 1, color: Color(0xFF605D62)),
                            ),
                            height: 50,
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("Assets/images/google_logo.png"),
                                SizedBox(
                                  width: 5,
                                ),
                                customtext(
                                    fontsize: 14,
                                    color: whitecolor,
                                    fontWeight: FontWeight.w400,
                                    fontfamily: 'Inter',
                                    text: "Google"),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => registerscreen(),
                              )),
                          child: customtext(
                              fontsize: 14,
                              color: purpulecolor,
                              fontWeight: FontWeight.w600,
                              fontfamily: 'Inter',
                              text: "Don’t have an account yet ? Register"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
