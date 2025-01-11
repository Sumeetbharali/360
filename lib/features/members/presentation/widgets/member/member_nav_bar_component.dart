import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/color_palette.dart';

class MemberNavBarComponent extends StatelessWidget {
  MemberNavBarComponent(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.label});

  void Function() onTap;
  Widget icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          icon,
          Text(
            label,
            style: TextStyle(fontSize: 7.sp, color: ColorPalette.mainGreen),
          ),
        ],
      ),
    );
  }
}
