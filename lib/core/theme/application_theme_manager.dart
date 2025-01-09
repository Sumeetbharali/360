import 'package:flutter/material.dart';

import 'color_palette.dart';

class ApplicationThemeManager {
  static ThemeData theme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: ColorPalette.mainGreen,
        iconTheme: IconThemeData(color: Colors.white)),
    scaffoldBackgroundColor: ColorPalette.backgroundColor,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: ColorPalette.mainGreen,
        onPrimary: Colors.white,
        secondary: Colors.cyan,
        onSecondary: Colors.purple,
        error: Colors.red,
        onError: Colors.blueGrey,
        surface: Colors.white,
        onSurface: Colors.grey),
  );
}
