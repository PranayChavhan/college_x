import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//****************************size************************************
class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeH;
  static double? blockSizeV;

  void init(BuildContext context){
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

}

//****************************Fonts*************************************

final kTitle = TextStyle(
    fontFamily: 'Klasik',
    fontSize: SizeConfig.blockSizeH! * 7,
    fontWeight: FontWeight.bold,
    color: ColorConstants.kSecondaryColor
);

final kBodyTextBold = TextStyle(
  fontFamily: 'Roboto',
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
  color: ColorConstants.kSecondaryColor,
);

final kBodyText = TextStyle(
  fontFamily: 'Roboto',
  fontSize: SizeConfig.blockSizeH! * 4.5,
  color: ColorConstants.kDarkColor,
);

