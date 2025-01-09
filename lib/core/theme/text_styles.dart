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
  static TextStyle fontInter15MainGreenMedium = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainGreen,
      fontSize: 15.sp,
      fontWeight: MyFontWeights.medium);
}
