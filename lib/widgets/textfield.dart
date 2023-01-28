import 'package:flutter/material.dart';


class customtextfield extends StatelessWidget {
  const customtextfield({super.key, required this.hinttext});
final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          hintText: hinttext,
          filled: true,
          fillColor: Color(0xFF313033)),
    );
  }
}