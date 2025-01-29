import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';

import '../../../../core/widgets/space.dart';
import '../manager/members_cubit.dart';

class MemberTop extends StatelessWidget {
  MemberTop({super.key, this.leftMargin = 65, required this.member});

  int leftMargin;
  MemberModel member;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<MembersCubit>();
    cubit.member = member;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        horizontalSpace(leftMargin),
        CircleAvatar(
          radius: 25.sp,
          backgroundColor: Colors.white,
        ),
        const Spacer(),
        GestureDetector(
            onTap: () {
              cubit.deleteMember();
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            child: const Icon(Icons.delete)),
      ],
    );
  }
}
