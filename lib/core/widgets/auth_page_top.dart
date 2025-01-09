import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/widgets/space.dart';

import '../theme/color_palette.dart';
import '../theme/text_styles.dart';

class AuthPageTop extends StatelessWidget {
  AuthPageTop({super.key, required this.image});

  Widget image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image,
        verticalSpace(10),
        CircleAvatar(
          backgroundColor: ColorPalette.mainGreen,
          radius: 25.sp,
        ),
        verticalSpace(10),
        Text("Manage Your Gym", style: MyTextStyles.fontInter18MainGreenMedium),
        verticalSpace(20),
      ],
    );
  }
}
