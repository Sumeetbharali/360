import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class SignupField extends StatelessWidget {
  SignupField(
      {super.key,
      required this.text,
      required this.width,
      required this.onChanged});

  final Function(String value) onChanged;
  String text;
  int width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$text -:",
          style: MyTextStyles.fontInter20MainGreenSemiBold,
        ),
        horizontalSpace(10),
        SizedBox(
          height: 15.h,
          width: width.w,
          child: TextFormField(
            onChanged: (value) {
              onChanged(value);
            },
            style: MyTextStyles.fontInter15MainGreenMedium
                .copyWith(color: Colors.white),
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey, // Default bottom border color
                  width: 0.5, // Default bottom border thickness
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
