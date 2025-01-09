import 'package:flutter/material.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/login/presentation/views/login.dart';

import '../../features/home/presentation/views/home.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(
            builder: (context) => Login(), settings: settings);

      case PagesRoutes.homeView:
        return MaterialPageRoute(
            builder: (context) => Home(), settings: settings);
      default:
        return MaterialPageRoute(builder: (context) => const Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
