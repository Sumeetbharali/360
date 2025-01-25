import 'package:flutter/material.dart';
import 'package:gym_management/core/configurations/pages_routes.dart';
import 'package:gym_management/core/splash.dart';
import 'package:gym_management/features/auth/presentation/manager/auth_cubit.dart';
import 'package:gym_management/features/members/presentation/views/add_member.dart';
import 'package:gym_management/features/members/presentation/views/member_information.dart';

import '../../features/auth/presentation/pages/login_google.dart';
import '../../features/auth/presentation/pages/login_mail.dart';
import '../../features/auth/presentation/pages/login_options.dart';
import '../../features/auth/presentation/pages/sign_up.dart';
import '../../main_layout.dart';

class AppRouter {
  final AuthCubit myAuthCubit = AuthCubit();
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
            builder: (context) => LoginMail(), settings: settings);

      case PagesRoutes.loginWithGoogle:
        return MaterialPageRoute(
            builder: (context) => const LoginGoogle(), settings: settings);

      case PagesRoutes.signUp:
        return MaterialPageRoute(
            builder: (context) => SignUp(), settings: settings);

      case PagesRoutes.splash:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(), settings: settings);

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
