import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/services/bloc_observer.dart';
import 'core/theme/application_theme_manager.dart';
import 'features/auth/presentation/manager/auth_cubit.dart';
import 'firebase_options.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        child: BlocProvider(
          create: (context) => AuthCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ApplicationThemeManager.theme,
            initialRoute: PagesRoutes.splash,
            onGenerateRoute: AppRouter.onGenerateRoute,
          ),
        ),
      ),
    );
  }
}
