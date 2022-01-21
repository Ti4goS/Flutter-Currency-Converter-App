import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/fetch_controller.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';

class CurrencySearch extends ChangeNotifier {

  static List<CurrencyModel> filteredList = [];
  var loading = ValueNotifier(false);


  void setCurrency(String filter) {
    if (filter.isNotEmpty) {
      filteredList = List.empty(growable: true);
      //verifica se o filtro está vazio
      for (dynamic currency in FetchController.finalCurrencies) {
        //faz um loop para cada itam dentro da lista "item"
        String name = currency.name.toString().toLowerCase();
        if (name.contains(filter.toLowerCase())) {
          filteredList.add(currency);
        }
        //verifica se o atual nome da moeda tem o filtro digitado pelo usuário
      }
    } else {
      if (filter.isEmpty) {
        filteredList = List.empty(growable: true);
        filteredList.addAll(FetchController.finalCurrencies);
      }
    }
    //se o filtro estiver vazio ele esvazia a lista e adiciona todos os valores disponiveis
    notifyListeners();
  }

  List<CurrencyModel> get getCurrency {
      return filteredList;
  }
  //getter da lista filtrada
}
