import 'package:college_x/constraints.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColorLight: ColorConstants.kPrimaryColor,
        fontFamily: GoogleFonts.roboto().fontFamily,
        appBarTheme: const AppBarTheme(
            color: ColorConstants.kLightColor,
            elevation: 0.0,
            iconTheme: IconThemeData(color: ColorConstants.kDarkColor)),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: ColorConstants.kLightColor,
      );
}
