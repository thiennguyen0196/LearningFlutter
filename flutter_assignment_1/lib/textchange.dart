import 'package:flutter/material.dart';

class TextChanged extends StatelessWidget {
  final String customText;

  TextChanged({required this.customText});

  @override
  Widget build(BuildContext context) {
    return Text(
      customText,
      textAlign: TextAlign.center,
    );
  }
}
