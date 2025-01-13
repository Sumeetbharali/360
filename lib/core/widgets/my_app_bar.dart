import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';

import '../theme/color_palette.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 100.h,
      color: ColorPalette.mainGreen,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
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
                height: 35.h,
                child: TextFormField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                    hintText: "Name/ Mobile",
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
              horizontalSpace(3),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(30.w, 33.h),
                    backgroundColor: Colors.black),
                child: const Text(
                  "SMS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
