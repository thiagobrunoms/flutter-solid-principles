import 'package:flutter/material.dart';
import 'package:flutter_solid/design_patterns/abstract_factory/i_button.dart';

class MaterialButton implements IButton {
  final String text;
  final Function() callback;

  MaterialButton({required this.text, required this.callback});

  @override
  Widget build() {
    return ElevatedButton(
      child: Text(text),
      onPressed: callback,
    );
  }
}
