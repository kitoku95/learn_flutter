import 'package:flutter/material.dart';

class TextBlockWidget extends StatelessWidget{
  
  final String text;
  final bool isAsk;

  const TextBlockWidget({required Key key, required this.text, required this.isAsk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(isAsk ? "Q: " + this.text : "A: " + this.text),
    );
  }
  
}