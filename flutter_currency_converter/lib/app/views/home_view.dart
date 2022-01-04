import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/converter_box.dart';
import 'package:flutter_currency_converter/app/widgets/constans.dart';
import 'package:flutter_currency_converter/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CURRENCY CONVERTER',
            style: headLine,
          ),
          backgroundColor: MyApp.isDarkTheme ? Colors.black : Colors.white,
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  MyApp.isDarkTheme = !MyApp.isDarkTheme;
                });
              },
              icon: Icon(
                Icons.light_mode_sharp,
                color: AppColors.titleColor,
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
                      title: Text(
                        'USD',
                        style: headLine,
                      ),
                      subtitle: const Text('American Dollar'),
                      urlFlag:
                          'https://cdn-icons-png.flaticon.com/512/206/206626.png'),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: const Alignment(0, 0),
                        height: 50,
                        width: 50,
                        child: Text('=', style: containerText),
                        decoration: containerDecoration,
                      ),
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Icon(
                                  Icons.compare_arrows_outlined,
                                  color: AppColors.buttonColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Switch currencies',
                                  style: buttonText,
                                ),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0x2F4B55C5),
                                side: BorderSide(
                                    color: AppColors.buttonColor))),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  ConverterBox(
                      urlFlag:
                          'https://cdn-icons-png.flaticon.com/512/206/206597.png',
                      title: Text(
                        'BRL',
                        style: headLine,
                      ),
                      subtitle: const Text('Brazilian Real')),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ));
  }
}
