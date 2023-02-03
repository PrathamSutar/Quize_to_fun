import 'dart:async';

import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  const customtextfield(
      {super.key,
      required this.hinttext,
      this.icon,
      this.iconcolor,
      required this.Controller});
  final String hinttext;
  final icon;
  final iconcolor;
  final Controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hinttext,
          filled: true,
          suffixIcon: Icon(icon),
          fillColor: Color(0xFF313033)),
    );
  }
}
