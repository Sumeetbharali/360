import 'package:flutter/material.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/features/login/presentation/views/login_google.dart';
import 'package:gym_management/features/login/presentation/views/login_mail.dart';
import 'package:gym_management/features/members/presentation/views/add_member.dart';
import 'package:gym_management/features/members/presentation/views/member_information.dart';
import 'package:gym_management/features/sign_up/presentation/views/plan_selection.dart';
import 'package:gym_management/features/sign_up/presentation/views/sign_up.dart';

import '../../features/login/presentation/views/login_options.dart';
import '../../main_layout.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(
            builder: (context) => const LoginOptions(), settings: settings);

      case PagesRoutes.mainLayout:
        return MaterialPageRoute(
            builder: (context) => const MainLayout(), settings: settings);

      case PagesRoutes.loginWithMail:
        return MaterialPageRoute(
            builder: (context) => const LoginMail(), settings: settings);

      case PagesRoutes.loginWithGoogle:
        return MaterialPageRoute(
            builder: (context) => const LoginGoogle(), settings: settings);

      case PagesRoutes.signUp:
        return MaterialPageRoute(
            builder: (context) => const SignUp(), settings: settings);

      case PagesRoutes.planSelection:
        return MaterialPageRoute(
            builder: (context) => const PlanSelection(), settings: settings);

      case PagesRoutes.memberInformation:
        return MaterialPageRoute(
            builder: (context) => MemberInformation(), settings: settings);

      case PagesRoutes.addMember:
        return MaterialPageRoute(
            builder: (context) => const AddMember(), settings: settings);

      default:
        return MaterialPageRoute(builder: (context) => const Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
