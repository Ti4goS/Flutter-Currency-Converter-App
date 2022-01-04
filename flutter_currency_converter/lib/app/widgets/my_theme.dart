import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';

class MyTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFDADCE2),
    bottomAppBarColor: const Color(0xFFACAFB8),
    primaryColor: AppColors.primaryColor,
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF030306),
    primaryColor: AppColors.primaryColor,
  );
}
