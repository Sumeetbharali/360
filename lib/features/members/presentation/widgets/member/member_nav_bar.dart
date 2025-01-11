import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/color_palette.dart';
import '../member_nav_bar_component.dart';

class MemberNavBar extends StatelessWidget {
  const MemberNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MemberNavBarComponent(
              style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
              onTap: () {},
              icon: Icon(
                Icons.call,
                size: 18.sp,
              ),
              label: "Call"),
          MemberNavBarComponent(
              style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
              onTap: () {},
              icon: ImageIcon(
                AssetImage("assets/icons/whatsappIcon.png"),
                size: 18.sp,
              ),
              label: "Whatsapp"),
          MemberNavBarComponent(
              style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
              onTap: () {},
              icon: Icon(
                Icons.refresh,
                size: 18.sp,
              ),
              label: "Renew Plan"),
          MemberNavBarComponent(
              style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
              onTap: () {},
              icon: Icon(
                Icons.message,
                size: 18.sp,
              ),
              label: "Message"),
          MemberNavBarComponent(
              style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
              onTap: () {},
              icon: Icon(
                Icons.block,
                size: 18.sp,
              ),
              label: "Block"),
        ],
      ),
    );
  }
}
