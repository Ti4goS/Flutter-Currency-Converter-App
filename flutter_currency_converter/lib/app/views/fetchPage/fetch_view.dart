import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/currency_controller.dart';
import 'package:flutter_currency_converter/app/controller/currency_search_controller.dart';
import 'package:flutter_currency_converter/app/controller/fetch_controller.dart';
import 'package:flutter_currency_converter/app/views/fetchPage/onloading_view.dart';
import 'package:flutter_currency_converter/app/views/fetchPage/onerror_view.dart';
import 'package:flutter_currency_converter/app/views/homePage/home_view.dart';

class FetchView extends StatefulWidget {
  const FetchView({Key? key}) : super(key: key);

  @override
  _FetchViewState createState() => _FetchViewState();
}

class _FetchViewState extends State<FetchView> {
  final FetchController _fetchController = FetchController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchController.start();
  }

  _changeState(HomeState thisState,BuildContext context) {
    switch (thisState) {
      case HomeState.start:
        return Container();
      case HomeState.loading:
        return const OnLoading();
      case HomeState.success:
        CurrencyController.currencies = FetchController.finalCurrencies;
        CurrencySearch.filteredList = FetchController.finalCurrencies;
        return const HomeView();
      default:
        return OnError(fetchController: _fetchController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _fetchController.state,
        builder: (BuildContext context,Widget? child) {
          return _changeState(_fetchController.state.value,context);
        });
  }
}
