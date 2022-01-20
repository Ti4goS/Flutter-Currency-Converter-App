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

static TextStyle selectHeadline = TextStyle(
    fontSize: 30, color: AppColorsLight.containerTitle, fontWeight: FontWeight.bold);

static TextStyle textInput = TextStyle(
    fontSize: 20, color: AppColorsLight.containerTitle, fontWeight: FontWeight.bold);
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

  static TextStyle selectHeadline = TextStyle(
      fontSize: 30, color: AppColorsDark.containerTitle, fontWeight: FontWeight.bold);

static TextStyle textInput = TextStyle(
    fontSize: 20, color: AppColorsDark.containerTitle, fontWeight: FontWeight.bold);
}

class Links {
  static const brlFlag = 'https://cdn-icons-png.flaticon.com/512/206/206597.png';
  static const usdFlag = 'https://cdn-icons-png.flaticon.com/512/206/206626.png';
  static const eurFlag = 'https://cdn-icons-png.flaticon.com/512/555/555657.png';
  static const btcFlag = 'https://blog.netlex.com.br/wp-content/uploads/2018/01/bit-rev-.jpg';

}

