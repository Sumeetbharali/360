import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/core/services/auth_service.dart';
import 'package:gym_management/core/theme/color_palette.dart';
import 'package:gym_management/core/widgets/auth_page_top.dart';
import 'package:gym_management/core/widgets/space.dart';
import 'package:gym_management/core/widgets/text_between_dividers.dart';
import 'package:gym_management/features/login/presentation/widgets/my_text_field.dart';

import '../widgets/top_image_with_Gradient.dart';

class LoginMail extends StatefulWidget {
  LoginMail({super.key});

  @override
  State<LoginMail> createState() => _LoginMailState();
}

class _LoginMailState extends State<LoginMail> {
  final authService = AuthService();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void login() async {
    final email = emailController.text;
    final password = passwordController.text;

    try {
      await authService.signInWithEmailPassword(email, password);
      Navigator.pushNamed(context, PagesRoutes.mainLayout);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Error $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthPageTop(image: TopImageWithGradient()),
            TextBetweenDividers(text: "Login"),
            verticalSpace(30),
            MyTextField(
              controller: emailController,
              icon: const Icon(
                Icons.mail_outline_outlined,
                color: Colors.white,
              ),
              text: "Enter your Email",
            ),
            verticalSpace(20),
            MyTextField(
              controller: passwordController,
              isObscure: true,
              icon: const Icon(
                Icons.key_outlined,
                color: Colors.white,
              ),
              text: "Password",
            ),
            verticalSpace(40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ElevatedButton(
                  onPressed: () => login(),
                  // Navigator.pushNamed(context, PagesRoutes.mainLayout),
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
