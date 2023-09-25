import 'package:flutter/material.dart';

class CommonInputField extends StatelessWidget {
  final String helpText;
  const CommonInputField({super.key, required this.helpText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter ' + helpText,
        hintText: 'Enter ' + helpText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
    );
  }
}
