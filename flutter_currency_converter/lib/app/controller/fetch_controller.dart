import 'package:flutter/cupertino.dart';
import 'package:flutter_currency_converter/app/models/json_model.dart';
import 'package:flutter_currency_converter/app/repositories/currency_apy_decoder.dart';

class FetchController{
  List<Currency> moedas = [];
  final ApiDecoder _apiDecoder = ApiDecoder();
  final state = ValueNotifier<HomeState>(HomeState.start);

  start() async{
    try {
      state.value = HomeState.loading;
      moedas = await _apiDecoder.getDados();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }

}

enum HomeState{start, loading,success, error}