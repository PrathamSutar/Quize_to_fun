import 'package:flutter/material.dart';


class customtextfield extends StatelessWidget {
  const customtextfield({super.key, required this.hinttext,  this.icon, this.iconcolor});
final String hinttext;
final icon;
final iconcolor;


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          hintText: hinttext,
          filled: true,
          suffixIcon: Icon(icon),
          
          fillColor: Color(0xFF313033)),
    );
  }
}