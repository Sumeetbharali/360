import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../member_nav_bar_component.dart';

class MemberInfoNavBar extends StatelessWidget {
  const MemberInfoNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MemberNavBarComponent(
            style: TextStyle(
              fontSize: 10.sp,
            ),
            onTap: () {},
            icon: Icon(
              Icons.call,
              size: 30.sp,
            ),
            label: "Call"),
        MemberNavBarComponent(
            style: TextStyle(fontSize: 10.sp),
            onTap: () {},
            icon: ImageIcon(
              AssetImage("assets/icons/whatsappIcon.png"),
              size: 30.sp,
            ),
            label: "Whatsapp"),
        MemberNavBarComponent(
            style: TextStyle(fontSize: 10.sp),
            onTap: () {},
            icon: Icon(
              Icons.refresh,
              size: 30.sp,
            ),
            label: "Renew Plan"),
        MemberNavBarComponent(
            style: TextStyle(fontSize: 10.sp),
            onTap: () {},
            icon: Icon(
              Icons.message,
              size: 30.sp,
            ),
            label: "Message"),
        MemberNavBarComponent(
            style: TextStyle(fontSize: 10.sp),
            onTap: () {},
            icon: Icon(
              Icons.block,
              size: 30.sp,
            ),
            label: "Block"),
      ],
    );
  }
}
