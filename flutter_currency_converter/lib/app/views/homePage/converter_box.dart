import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/theme_changer.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/views/select_page/arguments_select.dart';
import 'package:flutter_currency_converter/app/views/select_page/select_currency_view.dart';
import '../widgets/widgets.dart';
import 'package:provider/provider.dart';

class ConverterBox extends StatefulWidget {
  const ConverterBox({required this.controller, Key? key, required this.model, required this.where})
      : super(key: key);

  final CurrencyModel model;
  final TextEditingController controller;
  final String where;

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
              subtitle: Text(
                item.subTitle,
                style: _themeChanger.darkTheme
                    ? TextDark.subTitle
                    : TextLight.subTitle,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: AppColors.primaryColor,
                iconSize: 16,
                onPressed: () {
                 Navigator.pushReplacementNamed(context, SelectCurrency.routeName,arguments: ArgSelect(where: widget.where, item: CurrencyModel.currency));
                },
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
                suffixText: item.suffix,
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
