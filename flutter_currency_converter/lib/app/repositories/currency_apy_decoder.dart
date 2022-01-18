import 'package:dio/dio.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';

class ApiDecoder {
  final urlBase =
      'https://economia.awesomeapi.com.br/last/';
  final dio = Dio();

   getDados() async {
     final response = await dio.get(urlBase);
     final body = response.data;
    print(body["EURUSD"]["bid"].toString()); 
  }
}