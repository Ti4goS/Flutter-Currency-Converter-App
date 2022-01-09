
import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:provider/provider.dart';

import 'app/views/my_app.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => ThemeChanger(),
      child: const MyApp(),
    ));
