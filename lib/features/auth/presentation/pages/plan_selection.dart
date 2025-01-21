import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/widgets/space.dart';

import '../../../../core/theme/text_styles.dart';
import '../widgets/plan.dart';

class PlanSelection extends StatelessWidget {
  const PlanSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.sp,
            ),
            verticalSpace(10),
            Text("Select Your Plan",
                textAlign: TextAlign.center,
                style: MyTextStyles.fontInter20MainGreenLight
                    .copyWith(fontSize: 25)),
            verticalSpace(10),
            Text("7 Days Free Trial",
                textAlign: TextAlign.center,
                style: MyTextStyles.fontInter15MainGreenMedium),
            verticalSpace(20),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => Plan(),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 20.h),
                    itemCount: 3))
          ],
        ),
      ),
    );
  }
}
