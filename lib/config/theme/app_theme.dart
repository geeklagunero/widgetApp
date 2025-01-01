import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  })  : assert(selectedColor >= 0, 'Selecciona el color mayor a 0'),
        assert(selectedColor < colorList.length,
            'el color debe ser menor que ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: AppBarTheme(
          centerTitle: false,
        ),
      );
}
