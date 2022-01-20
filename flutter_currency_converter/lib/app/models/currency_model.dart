import 'package:flutter/animation.dart';
import 'package:flutter_currency_converter/app/models/json_model.dart';
import 'package:flutter_currency_converter/app/views/widgets/constants.dart';

class CurrencyModel {
  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dollar,
      required this.euro,
      required this.bitcoin,
      required this.urlFlag,
      required this.subTitle,
      required this.suffix});

  String name;
  double real;
  double dollar;
  double euro;
  double bitcoin;
  String urlFlag;
  String subTitle;
  String suffix;

  static List get flags =>
      [Links.brlFlag, Links.usdFlag, Links.eurFlag, Links.btcFlag];

  static List get subTitles =>
      ['Brazilian Real', 'American Dollar', 'Euro', 'Cripto Bitcoin'];

  static List<CurrencyModel> get currency {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real',
        real: 1,
        dollar: 5.64,
        euro: 6.40,
        bitcoin: 0.0000042,
        urlFlag: Links.brlFlag,
        subTitle: 'Brazilian Real',
        suffix: 'R\$',
      ),
      CurrencyModel(
          name: 'Dollar',
          real: 5.65,
          dollar: 1,
          euro: 0.88,
          bitcoin: 0.000024,
          urlFlag: Links.usdFlag,
          subTitle: 'American Dollar',
          suffix: '\$'),
      CurrencyModel(
          name: 'Euro',
          real: 6.40,
          dollar: 1.14,
          euro: 1,
          bitcoin: 0.000027,
          urlFlag: Links.eurFlag,
          subTitle: 'Euro',
          suffix: '€'),
      CurrencyModel(
          name: 'Bitcoin',
          real: 235262,
          dollar: 41744,
          euro: 36740,
          bitcoin: 1,
          urlFlag: Links.btcFlag,
          subTitle: 'Cripto Bitcoin',
          suffix: 'BTC')
    ];
  }

  static fromCurrency(List<Currency> items) {
    List<CurrencyModel> lista = [];

    List<Currency> usd = [];
    List<Currency> brl = [];
    List<Currency> eur = [];
    List<Currency> btc = [];

    for (var item in items) {
      switch (item.code) {
        case 'USD':
          usd.add(item);
          break;
        case 'EUR':
          eur.add(item);
          break;
        case 'BRL':
          brl.add(item);
          break;
        case 'BTC':
          btc.add(item);
          switch (item.codein) {
            case 'USD':
              usd.add(item);
              break;
            case 'EUR':
              eur.add(item);
              break;
            case 'BRL':
              brl.add(item);
              break;
          }
          break;
      }
    }

    for(var item in usd){
      print(item.code.toString() +'  '+ item.codein.toString());
    }
    for(var item in brl){
      print(item.code.toString() +'  '+ item.codein.toString());
    }
    for(var item in eur){
      print(item.code.toString() +'  '+ item.codein.toString());
    }
    for(var item in btc){
      print(item.code.toString() +'  '+ item.codein.toString());
    }
  }
}
