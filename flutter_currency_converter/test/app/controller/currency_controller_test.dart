import 'package:flutter/cupertino.dart';
import 'package:flutter_currency_converter/app/controller/currency_controller.dart';
import 'package:flutter_currency_converter/app/models/json_model.dart';
import 'package:flutter_currency_converter/app/repositories/currency_apy_decoder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  List<Currency> teste = await ApiDecoder().getDados();

}