import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/widgets/country_flag.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/widgets/constans.dart';

class ConverterBox extends StatelessWidget {
  const ConverterBox({required this.urlFlag,required this.title,required this.subtitle, Key? key }) : super(key: key);
  
  final Text title;
  final Text subtitle;
  final String urlFlag;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 200,
            width: MediaQuery.of(context).size.width*0.85,
            decoration: containerDecoration,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CountryFlag(url: urlFlag),
                      title: title,
                      subtitle: subtitle,
                      trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios),iconSize:16,onPressed: (){},),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        focusColor: AppColors.buttonColor,
                        suffixIcon: const Icon(Icons.attach_money_outlined), //Text("\$"),
                        border: const UnderlineInputBorder()
                      ),
                      onChanged: (value){},
                    ),
                  ],
                ),
              ),
          );
  }
}