import 'package:flutter_currency_converter/app/repositories/currency_apy_decoder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  await ApiDecoder().getDados('usd');
}