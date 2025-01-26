import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/features/members/presentation/views/members.dart';

import 'core/widgets/my_navigation_bar.dart';
import 'features/auth/presentation/manager/auth_cubit.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    var authCubit = context.read<AuthCubit>();

    return Scaffold(
      drawer: Container(
        alignment: AlignmentDirectional.topStart,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        height: double.infinity,
        width: 190.w,
        color: ColorPalette.lightGrey,
        child: Column(
          children: [
            BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSignOutSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, PagesRoutes.onBoardingView, (_) => false);
                }
              },
              child: TextButton(
                onPressed: () {
                  authCubit.signOut();
                },
                child: Text(
                  "Sign out",
                  style: MyTextStyles.fontInter20MainGreenSemiBold,
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: ColorPalette.darkGrey,
      body: Members(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
