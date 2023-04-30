import 'package:flutter/material.dart';

class AppColors {
  static const colorPrimary = LinearGradient(colors: [
    Color.fromRGBO(77, 105, 220, 1),
    Color.fromRGBO(28, 55, 161, 1),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static const colorSecondary = LinearGradient(colors: [
    Color.fromRGBO(108, 188, 252, 1),
    Color.fromRGBO(0, 102, 255, 1)
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);

  static const colorTertiary = Color.fromRGBO(196, 196, 196, 100);
  static const colorBackground = LinearGradient(colors: [
    Color.fromRGBO(244, 246, 255, 1),
    Color.fromRGBO(234, 237, 246, 1),
    Color.fromRGBO(224, 230, 254, 1)
  ], begin: Alignment.topCenter, end: Alignment.topRight);
// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primaryColor: COLOR_PRIMARY;
//   );
}


