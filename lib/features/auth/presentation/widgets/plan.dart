import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/auth/data/models/plan_model.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class Plan extends StatelessWidget {
  Plan({super.key, required this.plan});

  PlanModel plan;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 180.h,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
      child: Column(
        children: [
          Text(
            plan.plan_name,
            style: MyTextStyles.fontInter20MainGreenSemiBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$\$ ",
                style: MyTextStyles.fontInter15MainGreenMedium,
              ),
              Text("Per Year", style: MyTextStyles.fontInter13MainGreenRegular)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 10.sp,
              ),
              horizontalSpace(10),
              Text(
                "Benefits",
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
