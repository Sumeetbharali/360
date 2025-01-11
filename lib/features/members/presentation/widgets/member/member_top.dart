import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/space.dart';

class MemberTop extends StatelessWidget {
  const MemberTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        horizontalSpace(65),
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
