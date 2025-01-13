import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/members/presentation/widgets/member/member_body.dart';

import '../../../../../core/theme/color_palette.dart';
import '../../../../../core/widgets/space.dart';
import '../../../data/models/member_model.dart';
import '../member_top.dart';
import 'member_nav_bar.dart';

class Member extends StatelessWidget {
  Member({super.key, required this.member});

  MemberModel member;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PagesRoutes.memberInformation,
            arguments: member);
      },
      child: Container(
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
            MemberTop(),
            verticalSpace(5),
            MemberBody(member: member),
            const Spacer(),
            const MemberNavBar()
          ],
        ),
      ),
    );
  }
}
