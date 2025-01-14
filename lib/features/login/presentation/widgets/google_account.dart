import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class GoogleAccount extends StatelessWidget {
  const GoogleAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 60.h,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/alphabetPicture.jpg"),
            radius: 20,
          ),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(3),
              Text(
                "First Name Second Name",
                style: MyTextStyles.fontInter18MainGreenMedium,
              ),
              Text(
                "example@domain.com",
                style: MyTextStyles.fontInter15MainGreenMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
