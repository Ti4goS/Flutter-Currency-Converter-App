import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/currency_controller.dart';
import 'package:flutter_currency_converter/app/models/currency_model.dart';

class ChangeCurrency extends ChangeNotifier {
  setCurrency(String where, CurrencyModel item) {
    where == 'From'
        ? CurrencyController.from = item
        : CurrencyController.to = item;
    notifyListeners();
  }
}
