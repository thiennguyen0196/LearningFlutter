import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback? changeTextFunc;

  TextControl({this.changeTextFunc});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        "Change text",
      ),
      onPressed: changeTextFunc,
    );
  }
}
