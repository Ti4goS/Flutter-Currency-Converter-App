import 'package:flutter/material.dart';


   BoxDecoration containerDecorationLight = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ],
  );
//coloca sombra onde for necessário

BoxDecoration containerDecorationDark =  const BoxDecoration(
    color: Color(0xFF13151C),
    borderRadius: BorderRadius.all(Radius.circular(10)),

  );
