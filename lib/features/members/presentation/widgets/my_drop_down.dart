import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';

class MyDropDown extends StatelessWidget {
  MyDropDown({super.key, required this.items, required this.initialValue});

  List<DropdownMenuItem> items;
  String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      height: 35.h,
      width: 115.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
      child: DropdownButton(
        isExpanded: true,
        padding: EdgeInsets.zero,
        dropdownColor: Colors.black,
        style: TextStyle(color: ColorPalette.mainGreen),
        underline: SizedBox(),
        value: initialValue,
        items: items,
        onChanged: (x) {},
      ),
    );
  }
}
