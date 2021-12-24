import 'package:flutter/material.dart';

class MyTextFormInput extends StatelessWidget {
  final String label;
  final TextEditingController usernameController;
  final String? usernameErrorText;

  const MyTextFormInput({
    Key? key,
    required this.label,
    required this.usernameController,
    required this.usernameErrorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: usernameController,
      decoration:
          InputDecoration(labelText: label, errorText: usernameErrorText),
    );
  }
}
