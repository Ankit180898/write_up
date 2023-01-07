import 'package:flutter/material.dart';

const Color blueClr=Color(0xFF4e5ae8);
const Color yellow=Color(0xFFFFB746);
const Color pink=Color(0xFFFF4667);
const Color white=Colors.white;
const Color darkGrey=Color(0xFF121212);
const Color headerClr= Color(0xFF424242);

class Themes{
  static final lightTheme= ThemeData(
  primaryColor: blueClr, //changes the color of appbar

    brightness: Brightness.light, //compares the background color with text color
  );

  static final darkTheme=ThemeData(
      brightness: Brightness.dark, primaryColor: darkGrey
  );
}