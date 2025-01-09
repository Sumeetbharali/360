import 'package:flutter/material.dart';
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
      body: Column(
        children: [MyAppBar()],
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 0, onTap: (index) {}, items: [
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Members"),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize), label: "Dashboard"),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize), label: "Dashboard"),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize), label: "Dashboard"),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize), label: "Dashboard"),
      ]),
    );
  }
}
