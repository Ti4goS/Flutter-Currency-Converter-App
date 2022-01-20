import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/currency_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import '../widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'converter_box.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    CurrencyController controller = CurrencyController(fromText: fromText, toText: toText);

    
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('CUREENCY CONVERTER'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _themeChanger.setTheme();
              },
              icon: Icon(
                Icons.light_mode_sharp,
                color: _themeChanger.darkTheme
                    ? AppColorsDark.titleColor
                    : AppColorsLight.titleColor,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  ConverterBox(
                    controller: fromText,
                    model: //controller.from,
                    CurrencyController.from,
                    where: 'From',
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: _themeChanger.darkTheme
                            ? containerDecorationDark
                            : containerDecorationLight,
                        alignment: const Alignment(0, 0),
                        height: 50,
                        width: 50,
                        child: Text('=', style: containerText),
                      ),
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                controller.convertCurrency();
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.compare_arrows_outlined,
                                  color: AppColors.buttonColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'convert currencies',
                                  style: buttonText,
                                ),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0x2F4B55C5),
                                side:
                                    BorderSide(color: AppColors.buttonColor))),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  ConverterBox(
                    controller: toText,
                    model: //controller.to,
                    CurrencyController.to,
                    where: 'to',
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ));
  }
}
