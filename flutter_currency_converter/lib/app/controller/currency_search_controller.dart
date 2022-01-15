import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';

class CurrencySearch extends ChangeNotifier {
  List<CurrencyModel> _filteredList = CurrencyModel.currency;

  void setCurrency(String filter) {
    if (filter.isNotEmpty) {
      _filteredList = List.empty(growable: true);
      //verifica se o filtro está vazio
      for (dynamic currency in CurrencyModel.currency) {
        //faz um loop para cada itam dentro da lista "item"
        
        if (currency.name.contains(filter.toLowerCase())) {
          _filteredList.add(currency);
        }
        //verifica se o atual nome da moeda tem o filtro digitado pelo usuário
      }
    } else {
      if (filter.isEmpty) {
        _filteredList = List.empty(growable: true);
        _filteredList.addAll(CurrencyModel.currency);
      }
    }
    //se o filtro estiver vazio ele esvazia a lista e adiciona todos os valores disponiveis
    notifyListeners();
  }

  List<CurrencyModel> get getCurrency => _filteredList;
  //getter da lista filtrada
}
