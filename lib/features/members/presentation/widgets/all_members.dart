import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'member_item.dart';

class AllMembers extends StatelessWidget {
  const AllMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.9,
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 25.w, // Space between columns
              mainAxisSpacing: 20.h,
            ),
            itemBuilder: (context, index) {
              return MemberItem(
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
