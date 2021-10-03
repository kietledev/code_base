import 'package:code_base/common/constants/constants.dart';

import '../constants/constants.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get light {
    return ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: ColorConstatns.primaryColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: ColorConstatns.primaryColor,
        splashColor: ColorConstatns.splashColor,
        brightness: Brightness.light,
        // Textfield
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder()
        )
        );
  }
}
