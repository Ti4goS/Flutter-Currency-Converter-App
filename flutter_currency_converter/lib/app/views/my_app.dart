import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:provider/provider.dart';

import 'homePage/home_view.dart';
import 'widgets/my_theme.dart';
import 'widgets/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    ThemeChanger _themeChanger = context.watch<ThemeChanger>();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: _themeChanger.darkTheme? ThemeMode.dark : ThemeMode.light,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        routes: {
          AppRoutes.home: (context) => const HomeView(),
        },
        initialRoute: AppRoutes.home,
      );
  }
}