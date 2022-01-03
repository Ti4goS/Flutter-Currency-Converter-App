import 'package:flutter/material.dart';

class CountryFlag extends StatelessWidget {
  const CountryFlag({required this.url, Key? key }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 50,
    width: 50,
    child: DecoratedBox(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.fill,
      ),
    )));
  }
}