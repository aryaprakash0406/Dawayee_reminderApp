import 'package:flutter/material.dart';

class AppColors {
  static const colorPrimary = LinearGradient(colors: [
  Color.fromRGBO(77, 105, 220, 100),
  Color.fromRGBO(28, 54, 161, 100)
], begin: Alignment.topLeft, end: Alignment.bottomRight);

static const colorSecondary =  LinearGradient(colors: [
  Color.fromRGBO(108, 188, 252,100),Color.fromRGBO( 0, 102, 255,100)
], begin: Alignment.topCenter, end: Alignment.topRight);

 static const colorTertiary = Color.fromRGBO(196, 196, 196, 100);
static const colorBackground =  LinearGradient(colors: [
  Color.fromRGBO(244, 246, 255,100),Color.fromRGBO( 234, 237, 246,100),Color.fromRGBO( 224, 230, 254,100)
], begin: Alignment.topCenter, end: Alignment.topRight);
// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primaryColor: COLOR_PRIMARY;
//   );
}


