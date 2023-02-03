import 'package:flutter/material.dart';

import 'package:quiz_to_fun/colors/colors.dart';
import 'package:quiz_to_fun/screens/login.dart';
import 'package:quiz_to_fun/widgets/cutomtext.dart';
import 'package:quiz_to_fun/widgets/otpbox.dart';

class forgotpassOTP extends StatelessWidget {
  const forgotpassOTP({super.key});

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
                        text: "Forgot Password",
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
                          "Forgot your password ? Don’t Worry, Lets recover it.",
                      fontWeight: FontWeight.w400,
                      fontfamily: 'Inter',
                      fontsize: 16,
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customtext(
                            fontsize: 12,
                            color: whitecolor,
                            fontWeight: FontWeight.w500,
                            fontfamily: 'Inter',
                            text: "OTP Verification"),
                        customtext(
                            fontsize: 12,
                            color: purpulecolor,
                            fontWeight: FontWeight.w600,
                            fontfamily: 'inter',
                            text: "01:10")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        otpbox(),
                        otpbox(),
                        otpbox(),
                        otpbox(),
                        otpbox(),
                        otpbox(),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
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
                          child: Text("Verify OTP")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            )),
                        child: customtext(
                            fontsize: 16,
                            color: purpulecolor,
                            fontWeight: FontWeight.w600,
                            fontfamily: 'inter',
                            text: "Back To Login"))
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
