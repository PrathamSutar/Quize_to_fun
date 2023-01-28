import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_to_fun/screens/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => login(),));
    }, );
    super.initState();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF000000),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("Assets/images/templogo.png")],
        ),
      ),
    );
  }
}
