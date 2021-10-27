import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() callback;
  final String text;
  final Color color;

  const LoginButton(
      {required this.callback,
      required this.text,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ElevatedButton(
        onPressed: callback,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
