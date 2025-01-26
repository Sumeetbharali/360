import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/features/members/presentation/manager/members_cubit.dart';

import 'member/member.dart';

class AllMembers extends StatefulWidget {
  AllMembers({
    super.key,
  });

  @override
  State<AllMembers> createState() => _AllMembersState();
}

class _AllMembersState extends State<AllMembers> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<MembersCubit>(context).getMembers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: BlocBuilder<MembersCubit, MembersState>(
          builder: (context, state) {
            var cubit = context.read<MembersCubit>();
            if (state is MembersLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: ColorPalette.mainGreen,
                ),
              );
            } else if (state is MembersFail) {
              return const Text("No Members yet");
            } else {
              return GridView.builder(
                  itemCount: cubit.members.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.06,
                    crossAxisCount: 2, // Two items per row
                    crossAxisSpacing: 15.w, // Space between columns
                    mainAxisSpacing: 15.h, // Space between rows
                  ),
                  itemBuilder: (context, index) {
                    return Member(member: cubit.members[index]);
                  });
            }
          },
        ),
      ),
    );
  }
}
