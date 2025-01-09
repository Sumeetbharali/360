import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/core/widgets/my_app_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.darkGrey,
      body: const Column(
        children: [MyAppBar()],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0), // Adjust radius for top-left corner
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(size: 30.sp),
            unselectedIconTheme: IconThemeData(size: 25.sp),
            currentIndex: 0,
            onTap: (index) {},
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/membersIcon.png")),
                  label: "Members"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/dashboardIcon.png")),
                  label: "Dashboard"),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("assets/icons/collectionIcon.png")),
                  label: "Collection"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/gymIcon.png")),
                  label: "Gym"),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("assets/icons/todayReportIcon.png")),
                  label: "Report"),
            ]),
      ),
    );
  }
}
