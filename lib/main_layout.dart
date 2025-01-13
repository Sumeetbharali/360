import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/features/members/presentation/views/members.dart';

import 'core/widgets/my_navigation_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 70.h,
        width: 70.w,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, PagesRoutes.addMember);
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
      body: Members(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
