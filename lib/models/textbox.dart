import 'dart:ui';
import 'package:flutter/cupertino.dart';

class textbox extends StatelessWidget {
  const textbox(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize,
      this.fontWeight});

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'TT Norms Pro Bold.otf',
        fontWeight: fontWeight,
      ),
    );
  }
}
