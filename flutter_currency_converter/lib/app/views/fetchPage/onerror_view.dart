import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/fetch_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/views/widgets/widgets.dart';
import 'package:provider/provider.dart';

class OnError extends StatelessWidget {
  final FetchController fetchController;
  const OnError({Key? key, required this.fetchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Não Foi Possivel Acessar a Internet',
              style: _themeChanger.darkTheme
                  ? TextDark.headLine
                  : TextLight.headLine),
          const SizedBox(height: 15),
          OutlinedButton(
              onPressed: () {
                fetchController.start();
              },
              child: Text('Tentar Novamente',style: buttonText,))
        ],
      )),
    );
  }
}
