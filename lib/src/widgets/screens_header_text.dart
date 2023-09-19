import 'package:flutter/material.dart';

class ScreenHeaderText extends StatelessWidget {
  final String text;
  const ScreenHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
