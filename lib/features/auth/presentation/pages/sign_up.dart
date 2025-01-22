import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/presentation/manager/auth_cubit.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';
import '../widgets/sign_up_body.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  GymUserModel signUpUser = GymUserModel();

  void getData(GymUserModel user) {
    signUpUser = user;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 700.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: ColorPalette.mainGreen, width: 1.sp)),
              margin: EdgeInsets.only(left: 10.w, top: 20.h, right: 10.w),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorPalette.mainGreen,
                      radius: 25.sp,
                    ),
                    Text("Sign Up",
                        style: MyTextStyles.fontInter20MainGreenExtraBold
                            .copyWith(fontSize: 30)),
                    verticalSpace(20),
                    SizedBox(
                      width: 300.w,
                      child: Divider(
                        height: 1,
                        color: ColorPalette.mainGreen,
                      ),
                    ),
                    verticalSpace(30),
                    SignUpBody(
                      getData: getData,
                    )
                  ],
                ),
              ),
            ),
            verticalSpace(20),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                var myCubit = context.read<AuthCubit>();
                return GestureDetector(
                    onTap: () {
                      myCubit.user = signUpUser;
                      myCubit.signUp();
                      Navigator.pushNamedAndRemoveUntil(
                          arguments: myCubit,
                          context,
                          PagesRoutes.planSelection,
                          (Route<dynamic> route) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white, // White shadow
                              blurRadius: 2, // Blur intensity
                              spreadRadius: 0.1, // Spread of the shadow
                              offset: Offset(0, 3), // Shadow position (x, y)
                            ),
                          ],
                          border: Border.all(color: ColorPalette.mainGreen),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: MyTextStyles.fontInter20MainGreenSemiBold,
                        ),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
