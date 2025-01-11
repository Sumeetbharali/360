import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/widgets/space.dart';
import 'item_nav_bar.dart';
import 'member_details_field.dart';

class Member extends StatelessWidget {
  Member(
      {super.key,
      required this.name,
      required this.dueAmount,
      required this.expiryDate,
      required this.id});

  String name, id, expiryDate, dueAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.h),
      height: 170.h,
      width: 180.w,
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
              horizontalSpace(65),
              CircleAvatar(
                radius: 25.sp,
                backgroundColor: Colors.white,
              ),
              const Spacer(),
              GestureDetector(onTap: () {}, child: const Icon(Icons.delete)),
            ],
          ),
          verticalSpace(5),
          MemberDetailsField(
            field: 'Name',
            value: name,
            leftMargin: 40,
          ),
          Row(
            children: [
              horizontalSpace(21),
              ImageIcon(
                const AssetImage("assets/icons/idCardLogo.png"),
                size: 25.sp,
              ),
              horizontalSpace(3),
              MemberDetailsField(field: "M ID", value: id),
            ],
          ),
          MemberDetailsField(
              field: "Plan Expiry", value: expiryDate, leftMargin: 15),
          MemberDetailsField(
              field: "Due Amount", value: dueAmount, leftMargin: 9),
          Spacer(),
          ItemNavBar()
        ],
      ),
    );
  }
}
