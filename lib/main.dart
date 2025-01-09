import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/theme/application_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ApplicationThemeManager.theme,
          initialRoute: PagesRoutes.mainLayout,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
