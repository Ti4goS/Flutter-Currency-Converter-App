class CurrencyModel {
  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dollar,
      required this.euro,
      required this.bitcoin, required this.urlFlag});

  String name;
  double real;
  double dollar;
  double euro;
  double bitcoin;
  String urlFlag;

  static List<CurrencyModel> get currency {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1, dollar: 5.64, euro: 6.40, bitcoin: 0.0000042, urlFlag: 'https://cdn-icons-png.flaticon.com/512/206/206597.png'),
      CurrencyModel(
          name: 'Dollar', real: 5.65, dollar: 1, euro: 0.88, bitcoin: 0.000024, urlFlag: 'https://cdn-icons-png.flaticon.com/512/206/206626.png'),
      CurrencyModel(
          name: 'Euro', real: 6.40, dollar: 1.14, euro: 1, bitcoin: 0.000027, urlFlag: 'https://cdn-icons-png.flaticon.com/512/555/555657.png'),
      CurrencyModel(
          name: 'Bitcoin', real: 235262, dollar: 41744, euro: 36740, bitcoin: 1, urlFlag: 'https://cdn.icon-icons.com/icons2/1487/PNG/512/8369-bitcoin_102502.png')
    ];
  }
}
