import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'member.dart';

class AllMembers extends StatelessWidget {
  const AllMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.06,
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 15.w, // Space between columns
              mainAxisSpacing: 15.h, // Space between rows
            ),
            itemBuilder: (context, index) {
              return Member(
                name: "Person",
                id: "ID",
                expiryDate: "DD / MM / YYYY",
                dueAmount: "Amount",
              );
            }),
      ),
    );
  }
}
