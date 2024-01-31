import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
    this.sIcon,
    this.pIcon,
    this.obscureText = false,
    this.width,
  });

  final Widget? sIcon;
  final Widget? pIcon;
  final bool obscureText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width,
      child: TextField(

        obscureText: obscureText,
        cursorColor: Colors.deepOrangeAccent,
        decoration: InputDecoration(
          suffixIcon: sIcon,
          prefixIcon: pIcon,
          fillColor: const Color.fromRGBO(246, 246, 246, 1).withOpacity(.5),
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrangeAccent),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
          ),
        ),
      ),
    );
  }
}
