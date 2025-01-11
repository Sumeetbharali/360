import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_palette.dart';
import 'myFontWeights.dart';

class MyTextStyles {
  static TextStyle fontInter18MainGreenMedium = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainGreen,
      fontSize: 18.sp,
      fontWeight: MyFontWeights.medium);
  static TextStyle fontInter18WhiteLight = TextStyle(
      fontFamily: 'Inter',
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w300);
  static TextStyle fontInter15MainGreenMedium = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainGreen,
      fontSize: 15.sp,
      fontWeight: MyFontWeights.medium);
  static TextStyle fontInter11MainGreenRegular = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainGreen,
      fontSize: 11.sp,
      fontWeight: MyFontWeights.regular);
  static TextStyle fontInter20BlackExtraBold = TextStyle(
      fontFamily: 'Inter',
      color: Colors.black,
      fontSize: 20.sp,
      fontWeight: MyFontWeights.extraBold);
}
