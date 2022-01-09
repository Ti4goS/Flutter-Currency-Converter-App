import 'package:flutter/material.dart';

import 'app_colors.dart';

TextStyle buttonText = TextStyle(
    color: AppColors.buttonColor, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle containerText = TextStyle(
    color: AppColors.buttonColor, fontSize: 36, fontWeight: FontWeight.bold);

class TextLight{

static TextStyle appBarTextStyle = TextStyle(
    color: AppColorsLight.titleColor, fontSize: 16, fontWeight: FontWeight.bold);
//define o estilo do titulo da appbar

static TextStyle headLine = TextStyle(
    fontSize: 16, color: AppColorsLight.containerTitle, fontWeight: FontWeight.bold);
//define o estilo dos titulos

static TextStyle subTitle = TextStyle(color: AppColorsLight.subtitleColor);
//define o estilo dos titulos
}


class TextDark{

  static TextStyle appBarTextStyle = TextStyle(
      color: AppColorsDark.titleColor, fontSize: 16, fontWeight: FontWeight.bold);
//define o estilo do titulo da appbar

  static TextStyle headLine = TextStyle(
      fontSize: 16, color: AppColorsDark.containerTitle, fontWeight: FontWeight.bold);
//define o estilo dos titulos

  static TextStyle subTitle = TextStyle(color: AppColorsDark.subtitleColor);
//define o estilo dos titulos
}

