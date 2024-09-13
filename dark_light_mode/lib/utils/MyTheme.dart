import 'package:flutter/material.dart';

class MyTheme{

  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
   colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade400,
    secondary: Colors.grey.shade500,
   )
  );

  ThemeData darkTheme = ThemeData(
   brightness: Brightness.dark,
   colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
   )
  );



}