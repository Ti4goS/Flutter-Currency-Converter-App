import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/currency_search_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/views/select_page/arguments_select.dart';
import 'package:flutter_currency_converter/app/views/select_page/countries_map.dart';
import '../widgets/widgets.dart';
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
    //Controller do tema do APP
    
    CurrencySearch _currencySearch = Provider.of<CurrencySearch>(context);
    //controller do filtro de seleção de moedas

    final args = ModalRoute.of(context)!.settings.arguments as ArgSelect;
    //argumentos recebidos na mudança de página


    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Currency Converter',
            style: TextStyle(color: AppColors.primaryColor),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.homePage);
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
                  onChanged: (text){
                    setState(() {
                      _currencySearch.setCurrency(text);
                    });
                  },
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
                  itemCount: _currencySearch.getCurrency.length,
                  itemBuilder: (context, i) {
                    return CountriesMap(
                        where: args.where, item: _currencySearch.getCurrency.elementAt(i));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
