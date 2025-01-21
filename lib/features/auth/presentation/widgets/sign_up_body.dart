import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/auth/presentation/widgets/signup_field.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignupField(text: "Gym Name", width: 203),
        verticalSpace(20),
        SignupField(text: "Gym License No.", width: 149),
        verticalSpace(20),
        SignupField(text: "Owner Name", width: 185),
        verticalSpace(20),
        SignupField(text: "Email", width: 253),
        verticalSpace(20),
        SignupField(text: "Mobile No.", width: 204),
        verticalSpace(20),
        SignupField(text: "Address", width: 228),
        verticalSpace(20),
        Row(
          children: [
            SignupField(text: "City", width: 70),
            horizontalSpace(10),
            SignupField(text: "Pin Code", width: 70),
          ],
        ),
        verticalSpace(20),
        Row(
          children: [
            SignupField(text: "State", width: 70),
            horizontalSpace(10),
            SignupField(text: "Country", width: 70),
          ],
        ),
        verticalSpace(20),
        SignupField(text: "Password", width: 213),
        verticalSpace(20),
        SignupField(text: "Confirm Password", width: 134),
        verticalSpace(20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Upload Gym Logo -:",
              style: MyTextStyles.fontInter20MainGreenSemiBold,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 30.h,
                  width: 145.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        color: ColorPalette.mainGreen,
                      ),
                      Text(
                        "Upload",
                        style: MyTextStyles.fontInter11MainGreenRegular,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
