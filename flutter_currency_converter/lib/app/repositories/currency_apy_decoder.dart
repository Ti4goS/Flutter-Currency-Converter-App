import 'dart:convert';

import 'package:flutter_currency_converter/app/models/json_model.dart';
import 'package:http/http.dart' as http;

class ApiDecoder {

  final converts = ['USDBRL','EURBRL','BTCBRL','BRLUSD','EURUSD','BTCUSD','BRLEUR','USDEUR','BTCEUR'];
  //lista de todas as conversões que serão recebidas da API Rest


  final uri = Uri.parse(
      'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL,BRL-USD,EUR-USD,BTC-USD,BRL-EUR,USD-EUR,BTC-EUR');

  Future<List<Currency>> getDados() async {
    List<Currency> lista = [];
    //cria uma lista de cotações vazias

    final response = await http.get(uri);
    var data = jsonDecode(response.body.toString());
    //faz a requisição http dos arquivos

    if (response.statusCode == 200) {
    //se ele conseguiu se comunicar com o servidor retorna a lista com os dados
      for (var item in converts) {
        lista.add(Currency.fromJson(data[item]));
      }
    } else{
    //se ele não conseguiu se conectar com o servidor retorna uma lista vazia
      lista = List.empty();
    }
    return lista;
  }
}
