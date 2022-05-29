import 'package:flutter/material.dart';

class ChangeTextButton extends StatelessWidget {
  const ChangeTextButton({Key? key, required this.changeHandler})
      : super(key: key);
  final VoidCallback changeHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton(
        child: const Text('Change Value'),
        onPressed: changeHandler,
      ),
    );
  }
}
