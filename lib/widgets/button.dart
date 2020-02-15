import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key key, this.text, this.onPressed}) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}