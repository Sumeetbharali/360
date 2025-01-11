import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/features/members/presentation/widgets/item_nav_bar_component.dart';

class ItemNavBar extends StatelessWidget {
  const ItemNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemNavBarComponent(
              onTap: () {},
              icon: Icon(
                Icons.call,
                size: 18.sp,
              ),
              label: "Call"),
          ItemNavBarComponent(
              onTap: () {},
              icon: ImageIcon(
                AssetImage("assets/icons/whatsappIcon.png"),
                size: 18.sp,
              ),
              label: "Whatsapp"),
          ItemNavBarComponent(
              onTap: () {},
              icon: Icon(
                Icons.refresh,
                size: 18.sp,
              ),
              label: "Renew Plan"),
          ItemNavBarComponent(
              onTap: () {},
              icon: Icon(
                Icons.message,
                size: 18.sp,
              ),
              label: "Message"),
          ItemNavBarComponent(
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
