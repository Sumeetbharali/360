import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/text_styles.dart';

class MemberDetailsField extends StatelessWidget {
  MemberDetailsField(
      {super.key,
      required this.field,
      required this.value,
      this.leftMargin = 0});

  String field, value;
  double leftMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftMargin.w),
      child: RichText(
        text: TextSpan(
            text: "$field: ",
            style: MyTextStyles.fontInter11MainGreenRegular,
            children: [
              TextSpan(text: value, style: const TextStyle(color: Colors.white))
            ]),
      ),
    );
  }
}
