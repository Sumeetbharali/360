import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          onPressed: () {},
          backgroundColor: ColorPalette.red,
          child: Icon(
            Icons.add,
            size: 40.sp,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
      ),
      backgroundColor: ColorPalette.darkGrey,
      body: Members(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
