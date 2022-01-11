import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/views/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';
import 'package:flutter_currency_converter/app/views/widgets/country_flag.dart';
import 'package:provider/provider.dart';

class CountriesMap extends StatelessWidget {
  const CountriesMap({Key? key,required this.where}) : super(key: key);

  final String where;
  static List<CurrencyModel> item = CurrencyModel.currency;
  @override
  Widget build(BuildContext context) {
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
        top: MediaQuery.of(context).size.width*0.025,
        bottom: MediaQuery.of(context).size.width*0.025
      ),
      height: 100,
      decoration:
          BoxDecoration(border: Border(bottom: _borderSide, top: _borderSide)),
      child: ListTile(
        leading: CountryFlag(url: item[0].urlFlag),
        title: Text(
          item[0].name,
          style:
              _themeChanger.darkTheme ? TextDark.headLine : TextLight.headLine,
        ),
        subtitle: Text(
          item[0].subTitle,
          style:
              _themeChanger.darkTheme ? TextDark.subTitle : TextLight.subTitle,
        ),
      ),
    );
  }
}
