import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/presentation/widgets/drop_downs.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/widgets/my_app_bar.dart';

class Members extends StatelessWidget {
  Members({super.key});

  List<String> options1 = ["All Members", "Test1", "Test2"];
  List<String> options2 = ["All Plans"];
  List<String> options3 = ["Select Batch"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        verticalSpace(10),
        const DropDowns(),
        verticalSpace(20),
        Container(
          padding: EdgeInsets.only(top: 3.h),
          height: 200.h,
          width: 200.w,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  horizontalSpace(75),
                  CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.white,
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {}, child: const Icon(Icons.delete)),
                ],
              ),
              verticalSpace(5),
              Row(
                children: [
                  horizontalSpace(50),
                  RichText(
                    text: TextSpan(
                        text: "Name: ",
                        style: MyTextStyles.fontInter12MainGreenRegular,
                        children: const [
                          TextSpan(
                              text: "Person",
                              style: TextStyle(color: Colors.white))
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  horizontalSpace(32),
                  Icon(
                    (Icons.credit_card),
                    size: 25.sp,
                  ),
                  horizontalSpace(3),
                  RichText(
                    text: TextSpan(
                        text: "M ID: ",
                        style: MyTextStyles.fontInter12MainGreenRegular,
                        children: const [
                          TextSpan(
                              text: "ID", style: TextStyle(color: Colors.white))
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  horizontalSpace(25),
                  RichText(
                    text: TextSpan(
                        text: "Plan Expiry: ",
                        style: MyTextStyles.fontInter12MainGreenRegular,
                        children: const [
                          TextSpan(
                              text: "DD / MM / YYYY",
                              style: TextStyle(color: Colors.white))
                        ]),
                  ),
                ],
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: "Due Amount: ",
                    style: MyTextStyles.fontInter12MainGreenRegular,
                    children: const [
                      TextSpan(
                          text: "Amount", style: TextStyle(color: Colors.white))
                    ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
