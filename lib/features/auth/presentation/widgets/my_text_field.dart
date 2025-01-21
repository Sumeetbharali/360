import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/text_styles.dart';

class MyTextField extends StatelessWidget {
  MyTextField({super.key, required this.icon, required this.text});

  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextFormField(
        style: MyTextStyles.fontInter15MainGreenMedium
            .copyWith(color: Colors.white),
        validator: (value) {
          var regex = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
          if (value == null || value.trim().isEmpty) {
            return "Please enter your email";
          } else if (!regex.hasMatch(value)) {
            return "Invalid E-mail";
          }

          return null;
        },
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
