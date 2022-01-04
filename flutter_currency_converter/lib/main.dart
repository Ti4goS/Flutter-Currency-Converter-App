import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/views/home_view.dart';
import 'package:flutter_currency_converter/app/widgets/my_theme.dart';
import 'package:flutter_currency_converter/app/widgets/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static bool isDarkTheme =  true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: MyTheme.lightTheme, 
      darkTheme: MyTheme.darkTheme,
      routes: {
        AppRoutes.home: (context) => const HomeView(),
      },
      initialRoute: AppRoutes.home,
    );
  }
}
