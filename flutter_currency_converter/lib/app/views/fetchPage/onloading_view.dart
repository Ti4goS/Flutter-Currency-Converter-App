import 'package:flutter/material.dart';

class OnLoading extends StatelessWidget {
  const OnLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
