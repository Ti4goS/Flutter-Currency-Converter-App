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
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real',
          real: 1,
          dollar: double.parse(brl[1].bid),
          euro: double.parse(brl[2].bid),
          bitcoin: 1 / double.parse(brl[0].bid.toString().replaceAll('.', '')),
          urlFlag: Links.brlFlag,
          subTitle: 'Brazilian Real',
          suffix: 'R\$'),
      CurrencyModel(
          name: 'Dollar',
          real: double.parse(usd[0].bid),
          dollar: 1,
          euro: double.parse(usd[2].bid),
          bitcoin: 1/double.parse(usd[1].bid),
          urlFlag: Links.usdFlag,
          subTitle: 'American Dollar',
          suffix: '\$'),
      CurrencyModel(
          name: 'Euro',
          real: double.parse(eur[0].bid),
          dollar: double.parse(eur[1].bid),
          euro: 1,
          bitcoin: 1/double.parse(eur[2].bid),
          urlFlag: Links.eurFlag,
          subTitle: 'Euro',
          suffix: '€'),
      CurrencyModel(
          name: 'Bitcoin',
          real: double.parse(btc[0].bid),
          dollar: double.parse(btc[1].bid),
          euro: double.parse(btc[2].bid),
          bitcoin: 1,
          urlFlag: Links.btcFlag,
          subTitle: 'Cripto Bitcoin',
          suffix: 'BTC')
    ];
  }
}
