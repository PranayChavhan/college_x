import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//****************************size************************************
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeH;
  static double? blockSizeV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeH = screenWidth! / 100;
    blockSizeV = screenHeight! / 100;
  }
}

//*****************************Colors*********************************
class ColorConstants {
  static const kPrimaryColor = Color(0xffFC9D45);
  static const kSecondaryColor = Color(0xff573353);
  static const kDarkColor = Color(0xFF000000);
  static const kLightColor = Color(0xFFFFFFFF);
  static const kGreyColor = Color(0xFF424242);
  static const kRoyalBlue = Color(0xFF4169e1);
}

//****************************Fonts*************************************

final kTitle = TextStyle(
    fontFamily: 'Klasik',
    fontSize: SizeConfig.blockSizeH! * 7,
    fontWeight: FontWeight.bold,
    color: ColorConstants.kSecondaryColor);

final kTitleBody = TextStyle(
    fontFamily: 'Roboto',
    fontSize: SizeConfig.blockSizeH! * 7,
    fontWeight: FontWeight.bold,
    color: ColorConstants.kDarkColor);

final kBodyTextBold = TextStyle(
  fontFamily: 'Roboto',
  fontSize: SizeConfig.blockSizeH! * 5,
  fontWeight: FontWeight.bold,
  color: ColorConstants.kSecondaryColor,
);

final kBodyText = TextStyle(
  fontFamily: 'Roboto',
  fontSize: SizeConfig.blockSizeH! * 4,
  color: ColorConstants.kDarkColor,
);

TextStyle get subTimeHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: ColorConstants.kGreyColor,
  ));
}

TextStyle get timeHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ColorConstants.kGreyColor,
  ));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ColorConstants.kGreyColor,
  ));
}

TextStyle get HeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: ColorConstants.kDarkColor));
}

TextStyle get LoginHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: ColorConstants.kDarkColor));
}

TextStyle get subLoginHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorConstants.kGreyColor,
  ));
}
