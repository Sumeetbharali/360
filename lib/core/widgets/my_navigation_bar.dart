import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15.0), // Adjust radius for top-left corner
        topRight: Radius.circular(15.0),
      ),
      child: BottomNavigationBar(
          selectedIconTheme: IconThemeData(size: 30.sp),
          unselectedIconTheme: IconThemeData(size: 25.sp, color: Colors.white),
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
                icon: ImageIcon(AssetImage("assets/icons/collectionIcon.png")),
                label: "Collection"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/gymIcon.png")),
                label: "Gym"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/todayReportIcon.png")),
                label: "Report"),
          ]),
    );
  }
}
