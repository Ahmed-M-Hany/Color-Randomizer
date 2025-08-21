import 'dart:math';
import 'package:flutter/material.dart';

class RandomColorScreen extends StatefulWidget{

  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {

  Color _color = Colors.white;
  final int _maxRange = 255;
  void _changeColor() {
    setState(() {
      _color = Color.fromRGBO(
        Random().nextInt(_maxRange),
        Random().nextInt(_maxRange),
        Random().nextInt(_maxRange),
        1,
      );
    });
  }
  String _colorToStringRGB(Color color){
    return "Red: ${(color.r*_maxRange).round()}, "
        "Green: ${(color.g*_maxRange).round()}, "
        "Blue: ${(color.b*_maxRange).round()}";
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _color,
        body: Center(
            child: Container(
              padding: const EdgeInsets.all(4),
              color: Colors.white.withAlpha(200),
              child: Text(
                  _colorToStringRGB(_color)
              ),
            )
        ),
      ),
    );
  }
}