import 'package:flutter/material.dart';

import 'package:quiz_to_fun/colors/colors.dart';

import '../widgets/cutomtext.dart';
import '../widgets/textfield.dart';

class resetpassscreen extends StatelessWidget {
  const resetpassscreen({super.key});

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
                    height: 120,
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
                        text: "Reset Password",
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
                          "Let’s put a little security in place,reset your password.",
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
                        text: "Password"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(
                      icon: Icons.visibility,
                      iconcolor: Colors.white,
                      hinttext: "Enter password",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customtext(
                        fontsize: 12,
                        color: whitecolor,
                        fontWeight: FontWeight.w600,
                        fontfamily: 'Inter',
                        text: "Confirm Password"),
                    SizedBox(
                      height: 10,
                    ),
                    customtextfield(
                        icon: Icons.visibility,
                        hinttext: "Confirm your password"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: greenishcolor,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        customtext(
                            fontsize: 14,
                            color: greenishcolor,
                            fontWeight: FontWeight.w700,
                            fontfamily: 'Nunito Sans',
                            text: "At least one uppercase letter"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: chekboxcolor,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        customtext(
                            fontsize: 14,
                            color: purpulecolor,
                            fontWeight: FontWeight.w700,
                            fontfamily: 'Nunito Sans',
                            text: "Min. 8 characters"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: chekboxcolor,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        customtext(
                            fontsize: 14,
                            color: purpulecolor,
                            fontWeight: FontWeight.w700,
                            fontfamily: 'Nunito Sans',
                            text: "At least one number or  symbol"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 110,
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
                          onPressed: () {},
                          child: Text("Reset Password")),
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
