import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/currency_controller.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/views/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';
import 'package:flutter_currency_converter/app/views/widgets/country_flag.dart';
import 'package:provider/provider.dart';

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
      decoration:
          BoxDecoration(border: Border(bottom: _borderSide, top: _borderSide)),
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
        trailing: IconButton(
            icon: const Icon(Icons.change_circle_outlined),
            color: AppColors.primaryColor,
            iconSize: 16,
            onPressed: () {
              setState(() {
                if (widget.where == 'From') {
                  CurrencyController.from = widget.item;
                } else {
                  CurrencyController.to = widget.item;
                }
              });
            }),
      ),
    );
  }
}
