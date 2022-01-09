import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/views/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';
import 'package:flutter_currency_converter/app/views/widgets/container_decoration.dart';
import 'package:flutter_currency_converter/app/views/widgets/country_flag.dart';
import 'package:provider/provider.dart';

class ConverterBox extends StatefulWidget {

   const ConverterBox(
      {
      required this.subtitle,
      required this.suffix,
      required this.controller,
      Key? key, required this.model})
      : super(key: key);
  final CurrencyModel model;
  final TextEditingController controller;
  final String suffix;
  final Text subtitle;

  @override
  State<ConverterBox> createState() => _ConverterBoxState();
}

class _ConverterBoxState extends State<ConverterBox> {

  @override
  Widget build(BuildContext context) {
    CurrencyModel item = widget.model;
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: _themeChanger.darkTheme
          ? containerDecorationDark
          : containerDecorationLight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: CountryFlag(url: item.urlFlag),
              title: Text(
                        item.name,
                        style: _themeChanger.darkTheme
                            ? TextDark.headLine
                            : TextLight.headLine,
                      ),
              subtitle: widget.subtitle,
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: AppColors.primaryColor,
                iconSize: 16,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: widget.controller,
              keyboardType: TextInputType.number,
              style: _themeChanger.darkTheme
                  ? TextDark.headLine
                  : TextLight.headLine,
              decoration: InputDecoration(
                hintText: '1.00',
                hintStyle: _themeChanger.darkTheme
                    ? TextDark.subTitle
                    : TextLight.subTitle,
                suffixText: widget.suffix,
                suffixStyle: _themeChanger.darkTheme
                    ? TextDark.subTitle
                    : TextLight.subTitle,
                //suffixIcon: const Icon(Icons.attach_money_outlined),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo.shade100)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
