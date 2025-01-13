import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';

import 'member/member.dart';

class AllMembers extends StatelessWidget {
  AllMembers({
    super.key,
  });

  MemberModel member = MemberModel();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.06,
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 15.w, // Space between columns
              mainAxisSpacing: 15.h, // Space between rows
            ),
            itemBuilder: (context, index) {
              return Member(member: member);
            }),
      ),
    );
  }
}
