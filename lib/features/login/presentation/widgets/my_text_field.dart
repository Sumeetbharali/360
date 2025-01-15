import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      required this.icon,
      required this.text,
      this.controller,
      this.validator,
      this.isObscure = false});

  String text;
  Icon icon;
  TextEditingController? controller;
  String? Function(String?)? validator;
  bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        style: MyTextStyles.fontInter15MainGreenMedium
            .copyWith(color: Colors.white),
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 15),
          prefixIcon: icon,
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: ColorPalette.mainGreen,
                  style: BorderStyle.solid)),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
                width: 2,
                color: ColorPalette.mainGreen,
                style: BorderStyle.solid),
          ),
          hintText: text,
          // hintStyle: theme.textTheme.displaySmall,
        ),
      ),
    );
  }
}
