import 'package:flutter/material.dart';

import 'color_palette.dart';

class ApplicationThemeManager {
  static ThemeData theme = ThemeData(
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
