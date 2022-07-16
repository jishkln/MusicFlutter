import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle subTitleStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal);
  TextStyle titleStyle(
      {required double sizeFont,
      required Color textGradiantColor1,
      required Color textGradiantColor2}) {
    return TextStyle(
      fontSize: sizeFont,
      fontFamily: 'Caveat',
      fontWeight: FontWeight.bold,
      foreground: Paint()
        ..shader = LinearGradient(
          colors: <Color>[
            textGradiantColor1,
            // fromARGB(255, 10, 9, 9),
            textGradiantColor2,
            //Colors.red
            //add more color here.
          ],
        ).createShader(
          const Rect.fromLTWH(0.0, 0.0, 300.0, 100.0),
        ),
    );
  }
}
