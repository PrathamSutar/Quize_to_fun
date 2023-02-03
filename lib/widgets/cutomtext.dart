import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext(
      {super.key,
      required this.fontsize,
      required this.color,
      required this.fontWeight,
      required this.fontfamily,
      required this.text,
      this.Controller});
  final String text;
  final double fontsize;
  final Color color;
  final fontWeight;
  final String fontfamily;
  final Controller;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontfamily),
    );
  }
}
