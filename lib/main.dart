// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_to_fun/screens/forgotpassOTP.dart';
import 'package:quiz_to_fun/screens/forgotpasswordscreen.dart';
import 'package:quiz_to_fun/screens/login.dart';
import 'package:quiz_to_fun/screens/createpasswordscreen.dart';
import 'package:quiz_to_fun/screens/registerscreen.dart';
import 'package:quiz_to_fun/screens/rersetpassscreen.dart';
import 'package:quiz_to_fun/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splash(),
    );
  }
}
