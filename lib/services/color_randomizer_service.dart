import 'dart:math';
import 'package:flutter/material.dart';

/// generates random colors
class ColorRandomizerService{

  /// used to specify that the ranges of colors are between 0 and 255
  final int _maxRange = 255;
  /// the current random generated color
  Color color = Colors.white;


  /// initializes the object with a random color
  ColorRandomizerService(){
    generateRandomColor();
  }


  ///generates a random color by randomizing the values of red, green and blue
  ///note that the maximum value is [_maxRange]

  void generateRandomColor() {
    color=Color.fromRGBO(
        Random().nextInt(_maxRange),
        Random().nextInt(_maxRange),
        Random().nextInt(_maxRange),
        1,
      );
  }

  /// returns a string with the red, green and blue values
  String colorToStringRGB(){
    return "Red: ${(color.r*_maxRange).round()}, "
        "Green: ${(color.g*_maxRange).round()}, "
        "Blue: ${(color.b*_maxRange).round()}";
  }

}
