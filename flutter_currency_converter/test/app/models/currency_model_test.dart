import 'package:flutter_currency_converter/app/models/currency_model.dart';
import 'package:flutter_currency_converter/app/models/json_model.dart';
import 'package:flutter_currency_converter/app/repositories/currency_apy_decoder.dart';

void main() async{
  List<Currency> items = await ApiDecoder().getDados();
  CurrencyModel.fromCurrency(items);
}