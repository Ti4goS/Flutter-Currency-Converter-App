import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';

class CurrencyController{

 static List<CurrencyModel> currencies = [];

  CurrencyController({required this.fromText, required this.toText});

  static getList(List<CurrencyModel> lista){
    if(lista.isEmpty){
      currencies = List.empty(growable: true);
      currencies = CurrencyModel.currency;
    } else {
      currencies = List.empty(growable: true);
      currencies = lista;
    }
  }
  static CurrencyModel from = currencies.elementAt(1);
  static CurrencyModel to = currencies.elementAt(0);


  //por padrão deixa a convesão 
  
  TextEditingController fromText;
  TextEditingController toText;

  void convertCurrency() {
    double _convertedValue = 0;
    //armazena o valor a ser retornado

    String text = fromText.text;
    double fromValue = double.tryParse(text) ?? 1.0;
    //transfere o valor do inputText para double

    switch (to.name) {
      case 'Real':
        _convertedValue = fromValue * from.real;
        break;
      case 'Dollar':
        _convertedValue = fromValue * from.dollar;
        break;
      case 'Euro':
        _convertedValue = fromValue * from.euro;
        break;
      default:
        _convertedValue = fromValue * from.bitcoin;
        break;
    }
    //calcula o resultado da moeda convertida

    toText.text = _convertedValue.toStringAsFixed(2);
    //passa o valor convertido para o inputText na view
  }
}
