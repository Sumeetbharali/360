import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/core/widgets/auth_page_top.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/core/widgets/text_between_dividers.dart';

import '../manager/auth_cubit.dart';
import '../widgets/my_text_field.dart';
import '../widgets/top_image_with_Gradient.dart';

class LoginMail extends StatelessWidget {
  LoginMail({super.key});

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    var authCubit = context.read<AuthCubit>();
    void getEmail(String fieldController) {
      email = fieldController;
    }

    void getPassword(String fieldController) {
      password = fieldController;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthPageTop(image: TopImageWithGradient()),
            TextBetweenDividers(text: "Login"),
            verticalSpace(30),
            MyTextField(
              getController: getEmail,
              icon: const Icon(
                Icons.mail_outline_outlined,
                color: Colors.white,
              ),
              text: "Enter your Email",
            ),
            verticalSpace(20),
            MyTextField(
              getController: getPassword,
              icon: const Icon(
                Icons.key_outlined,
                color: Colors.white,
              ),
              text: "Password",
            ),
            verticalSpace(40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSignInSuccess) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, PagesRoutes.mainLayout, (_) => false);
                  }
                },
                child: ElevatedButton(
                    onPressed: () {
                      authCubit.password = password;
                      authCubit.email = email;
                      authCubit.signIn();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                        color: ColorPalette.mainGreen, // Border color
                        width: 0.8,
                      ),
                    ),
                    child: const Text("Login")),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
            TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, PagesRoutes.signUp),
                child: const Text("Sign up")),
          ],
        ),
      ),
    );
  }
}
