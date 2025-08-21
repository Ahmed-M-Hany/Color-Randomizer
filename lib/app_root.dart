import 'package:color_randomizer/color_randomizer/random_color_screen.dart';
import 'package:flutter/material.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color Randomizer Demo',
      home: RandomColorScreen(),
    );
  }
}
