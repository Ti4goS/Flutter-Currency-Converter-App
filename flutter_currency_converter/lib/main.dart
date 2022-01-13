
import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/change_currency_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:provider/provider.dart';

import 'app/views/my_app.dart';

void main() => runApp(MultiProvider(
      providers:[
        ChangeNotifierProvider<ThemeChanger>(
          create: (_) => ThemeChanger()),
        ChangeNotifierProvider<ChangeCurrency>(
          create: (_) => ChangeCurrency()),
      ],
      child: const MyApp(),
    ));
