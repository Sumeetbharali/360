import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';

import '../theme/color_palette.dart';

class ButtonWithIcon extends StatelessWidget {
  ButtonWithIcon(
      {super.key, required this.text, required this.icon, required this.onTap});

  Widget icon;
  String text;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: 350.w,
          height: 50.h,
          decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.mainGreen),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              icon,
              horizontalSpace(55),
              Text(
                style: MyTextStyles.fontInter15MainGreenMedium,
                text,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
