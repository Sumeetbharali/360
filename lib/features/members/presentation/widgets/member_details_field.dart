import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberDetailsField extends StatelessWidget {
  MemberDetailsField(
      {super.key,
      required this.field,
      required this.value,
      this.leftMargin = 0,
      this.fieldTextStyle,
      this.valueTextStyle});

  String field, value;
  double leftMargin;
  TextStyle? fieldTextStyle;
  TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftMargin.w),
      child: RichText(
        text: TextSpan(
            text: "$field: ",
            style: fieldTextStyle,
            children: [TextSpan(text: value, style: valueTextStyle)]),
      ),
    );
  }
}
