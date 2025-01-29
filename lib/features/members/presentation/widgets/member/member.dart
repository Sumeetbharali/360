import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/presentation/views/member_information.dart';
import 'package:gym_management/features/members/presentation/widgets/member/member_body.dart';

import '../../../../../core/theme/color_palette.dart';
import '../../../../../core/widgets/space.dart';
import '../../../data/models/member_model.dart';
import '../../manager/members_cubit.dart';
import '../member_top.dart';
import 'member_nav_bar.dart';

class Member extends StatelessWidget {
  Member({super.key, required this.member});

  MemberModel member;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var cubit = context.read<MembersCubit>();
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                    value: cubit,
                    child: MemberInformation(
                      member: member,
                    ),
                  )),
        );

        // Navigator.pushNamed(context, PagesRoutes.memberInformation,
        //     arguments: member);
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
            MemberTop(
              member: member,
            ),
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
