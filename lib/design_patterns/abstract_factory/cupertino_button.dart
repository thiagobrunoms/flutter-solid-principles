import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_solid/design_patterns/abstract_factory/i_button.dart';

class MyCupertinoButton implements IButton {
  final String text;
  final Function() callback;

  MyCupertinoButton({required this.text, required this.callback});

  @override
  Widget build() {
    return CupertinoButton(child: Text(text), onPressed: callback);
  }
}
