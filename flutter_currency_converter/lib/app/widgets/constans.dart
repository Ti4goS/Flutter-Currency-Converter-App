import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/main.dart';

TextStyle headLine =  TextStyle(
    color: AppColors.titleColor, fontSize: 16, fontWeight: FontWeight.bold);
//define o estilo dos titulos

TextStyle buttonText =  TextStyle(
    color: AppColors.buttonColor, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle containerText =  TextStyle(
    color: AppColors.buttonColor, fontSize: 36, fontWeight: FontWeight.bold);

BoxDecoration containerDecoration = BoxDecoration(
  color: MyApp.isDarkTheme ? Colors.black54 : Colors.white,
  borderRadius: const BorderRadius.all(Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3),
    )
  ],
);
//coloca sombra onde for necessário