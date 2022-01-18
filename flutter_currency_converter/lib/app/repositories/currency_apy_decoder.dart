

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiDecoder {
  final urlBase = 'https://economia.awesomeapi.com.br/last/USD-BRL';
  final dio = Dio();

  Future getDados(String currency) async {

    final response = await dio.get(urlBase);
    final body = response.data;
    debugPrint(body.toString());
    //faz a requisição web e retorna o mapa para a variavel json


  }

  urlBuild(String currency){
    late String url;

    switch (currency) {
      case 'usd':
        url = 'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL,BRL-USD,EUR-USD,BTC-USD,BRL-EUR,USD-EUR,BTC-EUR';
        break;
      case 'eur':
        url = 'https://economia.awesomeapi.com.br/last/BRL-EUR,USD-EUR,BTC-EUR';
        break;
      case 'brl':
        url = 'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL';
        break;
      case 'btc':
        url = 'https://economia.awesomeapi.com.br/last/BRL-BTC,EUR-BTC,USD-BTC';
        break;
    }

    return url;
  }
}
