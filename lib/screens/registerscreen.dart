import 'package:flutter/material.dart';
import 'package:quiz_to_fun/screens/login.dart';
import 'package:quiz_to_fun/screens/passwordscreen.dart';

import '../colors/colors.dart';
import '../widgets/cutomtext.dart';
import '../widgets/textfield.dart';

class registerscreen extends StatelessWidget {
  const registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      left: 10, right: 10, top: 30, bottom: 10),
                  child: Container(
                    height: 100,
                    width: 208,
                    child: Image.asset(
                      "Assets/images/templogo.png",
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customtext(
                        fontsize: 14,
                        color: purpulecolor,
                        fontWeight: FontWeight.w400,
                        fontfamily: 'Inter',
                        text: "Step 1/3"),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                        text: "Register",
                        fontsize: 24,
                        color: whitecolor,
                        fontWeight: FontWeight.w500,
                        fontfamily: 'Inter'),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      color: textcolor,
                      text:
                          "We love to get to know each other, tell us a little about yourself.",
                      fontWeight: FontWeight.w400,
                      fontfamily: 'Inter',
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w500,
                        fontfamily: 'Inter',
                        text: "Full Name"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(
                      hinttext: "Jhon Alex",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w600,
                        fontfamily: 'Inter',
                        text: "User Name"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(hinttext: "Enter Your User Name"),
                    SizedBox(
                      height: 15,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w600,
                        fontfamily: 'Inter',
                        text: "Email"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(hinttext: "example@mail.com"),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ),
                          ),
                          child: customtext(
                              fontsize: 14,
                              color: purpulecolor,
                              fontWeight: FontWeight.w700,
                              fontfamily: 'Nunito Sans',
                              text: "Don’t have an account yet ? Login"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Container(
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
                                    MaterialStateProperty.all(purpulecolor),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => passwordscreen(),
                                    ));
                              },
                              child: Text("Proceed")),
                        ),
                        SizedBox(height: 20),
                        customtext(
                            fontsize: 14,
                            color: whitecolor,
                            fontWeight: FontWeight.w400,
                            fontfamily: 'Inter',
                            text: "or log in with"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
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
                                    Image.asset(
                                        "Assets/images/google_logo.png"),
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
