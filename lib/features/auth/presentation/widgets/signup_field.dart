import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/space.dart';

class SignupField extends StatelessWidget {
  SignupField(
      {super.key,
      required this.text,
      required this.width,
      required this.onChanged,
      this.isObscure = false,
      this.textInputType = TextInputType.text,
      this.validator});

  final Function(String value, String text) onChanged;
  String text;
  int width;
  bool isObscure;
  TextInputType textInputType;
  String? Function(String?)? validator;

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
            onChanged: (value) => onChanged(value, text),
            validator: validator,
            obscureText: isObscure,
            keyboardType: textInputType,
            style: MyTextStyles.fontInter15MainGreenMedium
                .copyWith(color: Colors.white),
            decoration: const InputDecoration(
              errorMaxLines: 3,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
