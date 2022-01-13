import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/views/select_page/arguments_select.dart';
import 'package:flutter_currency_converter/app/views/select_page/countries_map.dart';
import 'package:flutter_currency_converter/app/views/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';
import 'package:flutter_currency_converter/app/views/widgets/container_decoration.dart';
import 'package:flutter_currency_converter/app/views/widgets/routes.dart';
import 'package:provider/provider.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({Key? key}) : super(key: key);
  static const routeName = '/selectScreen';

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    final args = ModalRoute.of(context)!.settings.arguments as ArgSelect;
    List<CurrencyModel> item = CurrencyModel.currency;

    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Currency Converter',
            style: TextStyle(color: AppColors.primaryColor),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.primaryColor,
            ),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Change Currency',
              textAlign: TextAlign.start,
              style: _themeChanger.darkTheme
                  ? TextDark.selectHeadline
                  : TextLight.selectHeadline,
            ),
            const SizedBox(height: 30),
            Container(
              decoration: _themeChanger.darkTheme
                  ? containerDecorationDark
                  : containerDecorationLight,
              height: 50,
              child: TextField(
                  keyboardType: TextInputType.text,
                  style: _themeChanger.darkTheme
                      ? TextDark.textInput
                      : TextLight.textInput,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: _themeChanger.darkTheme
                            ? AppColorsDark.containerTitle
                            : AppColorsLight.containerTitle),
                    border: InputBorder.none,
                  )),
            ),
            const SizedBox(height: 30),
            Flexible(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return CountriesMap(
                        where: args.where, item: item.elementAt(i));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
