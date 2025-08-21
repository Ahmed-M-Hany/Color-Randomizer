import 'package:color_randomizer/screens/color_randomizer/widgets/copy_text_widget.dart';
import 'package:color_randomizer/services/color_randomizer_service.dart';
import 'package:flutter/material.dart';

/// the first screen of the app with a text that says "hello there" and a text
/// on the top with red, green and blue values that represent the current color
class RandomColorScreen extends StatefulWidget{

  ///used dependency injection for the service that generates the random color
  const RandomColorScreen({required this.colorRandomizerService,super.key});
  ///the service that generates the random color
  final ColorRandomizerService colorRandomizerService;

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {




  void _generateRandomColor()=>setState(() {
    widget.colorRandomizerService.generateRandomColor();
  });

  @override
  Widget build(BuildContext context) {

    final colorToText = widget.colorRandomizerService.colorToStringRGB();

    return GestureDetector(
      onTap: _generateRandomColor,
      child: Scaffold(
        backgroundColor: widget.colorRandomizerService.color,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CopyTextWidget(text: colorToText),
              ),
              const Expanded(child: Center(child: Text("hello there"))),
          
            ],
          ),
        ),
      ),
    );
  }
}

