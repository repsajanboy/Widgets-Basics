import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  const DisplayText({Key? key, required this.displayText}) : super(key: key);
  final String displayText;
  @override
  Widget build(BuildContext context) {
    return Text(
      displayText,
      style: const TextStyle(fontSize: 28.0),
    );
  }
}
