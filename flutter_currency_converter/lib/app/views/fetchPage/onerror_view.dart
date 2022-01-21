import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/controller/fetch_controller.dart';

class OnError extends StatelessWidget {
  final FetchController fetchController;
  const OnError({Key? key,required this.fetchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const Text(
                'Não Foi Possivel Acessar a Internet, deseja continuar offline?'),
            OutlinedButton(
                onPressed: () {
                  fetchController.start();
                },
                child: const Text('Continuar Offline'))
          ],
        ));
  }
}
