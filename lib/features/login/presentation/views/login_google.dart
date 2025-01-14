import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';
import '../widgets/google_account.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UnconstrainedBox(
              child: Container(
                width: 330.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorPalette.mainGreen,
                        radius: 25.sp,
                      ),
                      Text("Choose an account",
                          textAlign: TextAlign.center,
                          style: MyTextStyles.fontInter20MainGreenExtraBold
                              .copyWith(fontSize: 30)),
                      verticalSpace(20),
                      Text("to Continue to Gym book",
                          textAlign: TextAlign.center,
                          style: MyTextStyles.fontInter15MainGreenMedium),
                      verticalSpace(20),
                      const GoogleAccount(),
                      verticalSpace(10),
                      const GoogleAccount(),
                      // const GoogleAccount(),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      "To continue, Google will share your\nyour name, email address and profile\n"
                      "picture with Gymbook. before\n"
                      "using this app, review its ",
                  style: MyTextStyles.fontInter15MainGreenMedium,
                  children: [
                    TextSpan(
                      text: "privacy\npolicy and terms of service.",
                      style: MyTextStyles.fontInter15MainGreenMedium.copyWith(
                          color:
                              Color(0xFF8BA0B4)), // Use your custom style here.
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
