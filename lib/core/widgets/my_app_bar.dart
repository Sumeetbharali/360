import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';

import '../theme/color_palette.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({super.key, required this.onTap});

  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 105.h,
      color: ColorPalette.mainGreen,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onTap: onTap,
                ),
                horizontalSpace(130),
                Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white])),
                  height: 35.h,
                  width: 35.w,
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 250.w,
                height: 38.h,
                child: TextFormField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                    hintText: "Search",
                    hintStyle: MyTextStyles.fontInter18WhiteLight,
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.white,
                    isDense: true,
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (searchBarController) {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
