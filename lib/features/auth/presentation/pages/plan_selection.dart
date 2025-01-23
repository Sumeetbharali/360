import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/features/auth/presentation/manager/auth_cubit.dart';

import '../../../../core/theme/text_styles.dart';
import '../widgets/plan.dart';

class PlanSelection extends StatefulWidget {
  PlanSelection({super.key});

  @override
  State<PlanSelection> createState() => _PlanSelectionState();
}

class _PlanSelectionState extends State<PlanSelection> {
  @override
  Widget build(BuildContext context) {
    var myCubit = context.read<AuthCubit>();
    myCubit.getPlans();
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.sp,
                ),
                verticalSpace(10),
                Text("Select Your Plan",
                    textAlign: TextAlign.center,
                    style: MyTextStyles.fontInter20MainGreenLight
                        .copyWith(fontSize: 25)),
                verticalSpace(10),
                Text("7 Days Free Trial",
                    textAlign: TextAlign.center,
                    style: MyTextStyles.fontInter15MainGreenMedium),
                verticalSpace(20),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) =>
                            Plan(plan: myCubit.plans[index]),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 20.h),
                        itemCount: myCubit.plans.length))
              ],
            ),
          ),
        );
      },
    );
  }
}
