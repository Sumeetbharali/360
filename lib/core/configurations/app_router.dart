import 'package:flutter/material.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/sign_up/presentation/views/sign_up.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(
            builder: (context) => SignUp(), settings: settings);
      default:
        return MaterialPageRoute(builder: (context) => const Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
