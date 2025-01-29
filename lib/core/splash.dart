import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    await Future.delayed(const Duration(seconds: 6)); // Optional splash delay

    // Check if a user is currently logged in
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // Navigate to Login Screen
      Navigator.pushReplacementNamed(context, PagesRoutes.onBoardingView);
    } else {
      // Navigate to Home Screen
      Navigator.pushNamedAndRemoveUntil(
          context, PagesRoutes.mainLayout, (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset(
              height: 200.h,
              repeat: false,
              "assets/animations/gymAnimation.json")), // Splash screen UI
    );
  }
}
