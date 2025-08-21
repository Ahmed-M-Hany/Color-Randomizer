import 'package:color_randomizer/screens/color_randomizer/random_color_screen.dart';
import 'package:color_randomizer/services/color_randomizer_service.dart';
import 'package:flutter/material.dart';

/// root of the widget tree (which is material app in this case)
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Randomizer Demo',
      home: RandomColorScreen(colorRandomizerService: ColorRandomizerService(),)
    );
  }
}
