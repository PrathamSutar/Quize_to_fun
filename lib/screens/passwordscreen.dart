import 'package:flutter/material.dart';
import 'package:quiz_to_fun/screens/login.dart';

import '../colors/colors.dart';
import '../widgets/cutomtext.dart';
import '../widgets/textfield.dart';

class passwordscreen extends StatelessWidget {
  const passwordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 208,
                  child: Image.asset(
                    "Assets/images/templogo.png",
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
                        text: "Step 2/3"),
                    customtext(
                        text: "Create a password",
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
                          "Let’s put a little security in place, create a password.",
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
                      height: 20,
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
                    customtext(
                        fontsize: 14,
                        color: greenishcolor,
                        fontWeight: FontWeight.w700,
                        fontfamily: 'Nunito Sans',
                        text: "At least one uppercase letter"),
SizedBox(height: 5,),

                         customtext(
                        fontsize: 14,
                        color: purpulecolor,
                        fontWeight: FontWeight.w700,
                        fontfamily: 'Nunito Sans',
                        text: "Min. 8 characters"),
SizedBox(height: 5,),

                         customtext(
                        fontsize: 14,
                        color: purpulecolor,
                        fontWeight: FontWeight.w700,
                        fontfamily: 'Nunito Sans',
                        text: "At least one number or  symbol"),
                  ],
                ),
                SizedBox(
                  height: 90,
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
                          child: Text("Proceed")),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        customtext(
                            fontsize: 12,
                            color: whitecolor,
                            fontWeight: FontWeight.w400,
                            fontfamily: 'Inter',
                            text: "By  creating a Quiz2Fun account you agree to all of "),
SizedBox(height: 5,),
    customtext(
                            fontsize: 12,
                            color: whitecolor,
                            fontWeight: FontWeight.w400,
                            fontfamily: 'Inter',
                            text: "Quiz2Fun terms and conditions."),                      ],
                    ),
                    SizedBox(
                      height: 20,
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
