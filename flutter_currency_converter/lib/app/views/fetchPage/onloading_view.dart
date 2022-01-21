import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/views/widgets/app_colors.dart';

class OnLoading extends StatelessWidget {
  const OnLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: AppColors.primaryColor,),
      ),
    );
  }
}
