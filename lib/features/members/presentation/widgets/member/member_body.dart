import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';

import '../../../../../core/widgets/space.dart';
import 'member_details_field.dart';

class MemberBody extends StatelessWidget {
  MemberBody({
    super.key,
    required this.member,
  });

  MemberModel member;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MemberDetailsField(
          field: 'Name',
          value: member.name,
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
            MemberDetailsField(field: "M ID", value: member.id),
          ],
        ),
        MemberDetailsField(
            field: "Plan Expiry", value: member.planExpiry, leftMargin: 15),
        MemberDetailsField(
          field: "Due Amount",
          value: member.dueAmount,
          leftMargin: 9,
        ),
      ],
    );
  }
}
