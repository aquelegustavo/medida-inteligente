import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({Key? key, required this.text, required this.action})
      : super(key: key);
  final String text;
  final dynamic action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: 280,
        child: Text(
          "$text",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
