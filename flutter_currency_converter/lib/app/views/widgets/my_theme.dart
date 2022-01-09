import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';

import 'app_colors.dart';

class MyTheme {
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextLight.appBarTextStyle),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
  );

  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: const Color(0xFF030306),
        centerTitle: true,
        titleTextStyle: TextDark.appBarTextStyle),
    scaffoldBackgroundColor: const Color(0xFF030306),
    primaryColor: AppColors.primaryColor,
  );
}
