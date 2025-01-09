import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/theme/text_styles.dart';
import 'package:gym_management/core/widgets/auth_page_top.dart';
import 'package:gym_management/core/widgets/button_with_icon.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/core/widgets/text_between_dividers.dart';
import 'package:gym_management/features/sign_up/presentation/widgets/top_image.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      AuthPageTop(image: TopImage()),
      TextBetweenDividers(text: "Log in or Sign up"),
      verticalSpace(25),

      // Mail button
      ButtonWithIcon(
        text: "Continue with Mail",
        icon: Icon(Icons.mail_outline_rounded),
      ),
      verticalSpace(25),
      TextBetweenDividers(text: "OR"),
      verticalSpace(25),

      // Google button
      ButtonWithIcon(
        text: "Sign in with Google",
        icon: Image.asset(
          "assets/icons/google.png",
          height: 25.h,
        ),
      ),
      verticalSpace(100),
      TextButton(
          onPressed: () {},
          child: Text(
            "Contact us",
            style: MyTextStyles.fontInter15MainGreenMedium,
          ))
    ]));
  }
}
