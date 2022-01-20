class Currency {
  String code;
  String codein;
  String name;
  String bid;


  Currency(
      {required this.code,
      required this.codein,
      required this.name,
      required this.bid,
});

  static fromJson(dynamic json){
    return Currency(code: json['code'], codein: json['codein'], name: json['name'], bid: json['bid']);
  }
}