import 'package:flutter/material.dart';

class AppSize {
  static double? screenHeight;
  static double? screenWidth;
  static double? defaultSize;
  static double? defaultSizeWeb;
  static Orientation? orientation;

  void init(BuildContext context) {
    if (screenWidth == null || screenHeight == null || defaultSize == null) {
      screenHeight = MediaQuery.of(context).size.height;
      screenWidth = MediaQuery.of(context).size.width;
      orientation = MediaQuery.of(context).orientation;
      defaultSize = orientation == Orientation.landscape
          ? screenHeight! * .024
          : screenWidth! * .024;
      defaultSizeWeb = orientation == Orientation.landscape
          ? screenHeight! * .07
          : screenWidth! * .07;
    }
  }
}