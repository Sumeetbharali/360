import 'package:flutter/material.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/login/presentation/views/login.dart';

import '../../main_layout.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(
            builder: (context) => Login(), settings: settings);

      case PagesRoutes.mainLayout:
        return MaterialPageRoute(
            builder: (context) => MainLayout(), settings: settings);
      default:
        return MaterialPageRoute(builder: (context) => const Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
