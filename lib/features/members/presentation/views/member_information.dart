import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';
import 'package:gym_management/features/members/presentation/widgets/member_information/member_info_body.dart';

import '../../../../core/theme/color_palette.dart';
import '../widgets/member_information/member_info_nav_bar.dart';
import '../widgets/member_top.dart';

class MemberInformation extends StatelessWidget {
  MemberInformation({super.key, this.member});

  MemberModel? member;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.h,
        leading: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 35.sp,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Column(
          children: [
            verticalSpace(5),
            Container(
              height: 35.h,
              width: 35.w,
              color: Colors.black,
            ),
            verticalSpace(10),
            Text(
              "Member Information",
              style: MyTextStyles.fontInter20BlackExtraBold,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 20.h, left: 10.w, right: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        height: 600.h,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            MemberTop(leftMargin: 140, member: member!),
            verticalSpace(5),
            MemberInfoBody(
              member: member!,
            ),
            const Spacer(),
            const MemberInfoNavBar(),
            // const MemberInfoNavBar()
          ],
        ),
      ),
    );
  }
}
