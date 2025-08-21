
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// displays the text with copy icons next to it
class CopyTextWidget extends StatelessWidget {
  const CopyTextWidget({
    required this.text, super.key,
  });

  ///text that you want to be copyable
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      color: Colors.white.withAlpha(200),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              text
          ),
          IconButton(
            onPressed: ()async{
              await Clipboard.setData(
                ClipboardData(text: text),
              );
            },
            icon: const Icon(Icons.copy,size: 20,),
          ),
        ],
      ),
    );
  }
}
