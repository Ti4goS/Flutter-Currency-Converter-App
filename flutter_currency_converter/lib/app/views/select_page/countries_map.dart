import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/change_currency_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:provider/provider.dart';
import '../widgets/widgets.dart';


class CountriesMap extends StatefulWidget {
  const CountriesMap({Key? key, required this.where, required this.item})
      : super(key: key);

  final String where;
  final CurrencyModel item;

  @override
  State<CountriesMap> createState() => _CountriesMapState();
}

class _CountriesMapState extends State<CountriesMap> {
  @override
  Widget build(BuildContext context) {
    ChangeCurrency _changeCurrency = Provider.of<ChangeCurrency>(context);
    // provider que altera a moeda a ser convertida

    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    //Provider do tema do app

    BorderSide _borderSide = BorderSide(
        width: 1.0,
        color: _themeChanger.darkTheme
            ? AppColorsDark.containerTitle
            : AppColorsLight.containerTitle);
    //definindo o borderSide do container

    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.025,
          bottom: MediaQuery.of(context).size.width * 0.025),
      height: 100,
      decoration: BoxDecoration(border: Border(bottom: _borderSide)),
      child: ListTile(
        leading: CountryFlag(url: widget.item.urlFlag),
        title: Text(
          widget.item.name,
          style:
              _themeChanger.darkTheme ? TextDark.headLine : TextLight.headLine,
        ),
        subtitle: Text(
          widget.item.subTitle,
          style:
              _themeChanger.darkTheme ? TextDark.subTitle : TextLight.subTitle,
        ),
        onTap: () {
          setState(() {
            _changeCurrency.setCurrency(widget.where, widget.item);
          });
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        },
      ),
    );
  }
}
