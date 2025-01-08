import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/theme/application_theme_manager.dart';
import 'core/theme/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
            systemNavigationBarColor: ColorPalette.backgroundColor,
            statusBarColor: ColorPalette.backgroundColor),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ApplicationThemeManager.theme,
          initialRoute: PagesRoutes.onBoardingView,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
