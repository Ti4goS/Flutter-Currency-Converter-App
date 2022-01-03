import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';

TextStyle headLine = const TextStyle(
    color: AppColors.titleColor, fontSize: 16, fontWeight: FontWeight.bold);
//define o estilo dos titulos

TextStyle buttonText = const TextStyle(
    color: AppColors.buttonColor, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle containerText = const TextStyle(
    color: AppColors.buttonColor, fontSize: 36, fontWeight: FontWeight.bold);

BoxDecoration containerDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.all(Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3),
    )
  ],
);
//coloca sombra onde for necessário