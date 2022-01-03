import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/views/home_view.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/widgets/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static bool isDarkTheme =  false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
          primaryColorLight: AppColors.primaryColor,
          scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
          bottomAppBarColor: const Color(0xFFDADCE2),
      ),    
      routes: {
        AppRoutes.home: (context) => const HomeView(),
      },
      initialRoute: AppRoutes.home,
    );
  }
}
