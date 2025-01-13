import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/space.dart';

class MemberTop extends StatelessWidget {
  MemberTop({super.key, this.leftMargin = 65});

  int leftMargin;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        horizontalSpace(leftMargin),
        CircleAvatar(
          radius: 25.sp,
          backgroundColor: Colors.white,
        ),
        const Spacer(),
        GestureDetector(onTap: () {}, child: const Icon(Icons.delete)),
      ],
    );
  }
}
