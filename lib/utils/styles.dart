import 'package:flutter/material.dart';

Color primary = const Color(0xFF44ACA0);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF0E1446);
  static Color bgColor = Colors.white;
  static Color greyColor = const Color(0xFFBCBCBC);
  static TextStyle textPriceStyle =
      TextStyle(fontSize: 10, color: primaryColor, fontWeight: FontWeight.w600);
  static TextStyle textCatStyle =
      TextStyle(fontSize: 16, color: primaryColor, fontWeight: FontWeight.w500);
  static TextStyle textStyle =
      TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w400);
  static TextStyle headline1Style =
      TextStyle(fontSize: 16, color: bgColor, fontWeight: FontWeight.w600);
  static TextStyle headline2Style =
      TextStyle(fontSize: 18, color: primaryColor, fontWeight: FontWeight.w500);
  static TextStyle headline3Style =
      TextStyle(fontSize: 24, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headline4Style =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle subtitle1Style =
      TextStyle(fontSize: 13, color: textColor, fontWeight: FontWeight.w400);
  static TextStyle subtitle2Style =
      TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w300);
}
