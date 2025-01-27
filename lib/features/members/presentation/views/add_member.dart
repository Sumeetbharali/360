import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/features/members/presentation/widgets/add_member/add_member_body.dart';

import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class AddMember extends StatefulWidget {
  const AddMember({super.key});

  @override
  State<AddMember> createState() => _AddMemberState();
}


class _AddMemberState extends State<AddMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.darkerGrey,
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
              "Add Member",
              style: MyTextStyles.fontInter20BlackExtraBold,
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          AddMemberBody(),
        ],
      ),
    );
  }
}
