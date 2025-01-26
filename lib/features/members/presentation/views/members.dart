import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/members/presentation/manager/members_cubit.dart';
import 'package:gym_management/features/members/presentation/views/add_member.dart';
import 'package:gym_management/features/members/presentation/widgets/drop_downs.dart';

import '../../../../core/widgets/my_app_bar.dart';
import '../widgets/all_members.dart';

class Members extends StatelessWidget {
  Members({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MembersCubit(),
      child: Scaffold(
        floatingActionButton: SizedBox(
          height: 70.h,
          width: 70.w,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider.value(
                          value: BlocProvider.of<MembersCubit>(context),
                          child: AddMember(),
                        )),
              );
            },
            backgroundColor: ColorPalette.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Icon(
              Icons.add,
              size: 40.sp,
            ),
          ),
        ),
        backgroundColor: ColorPalette.darkGrey,
        body: Column(
          children: [
            const MyAppBar(),
            verticalSpace(10),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  children: [
                    const DropDowns(),
                    verticalSpace(20),
                    AllMembers(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
