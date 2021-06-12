import 'package:desafio_mi/components/app_bar.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:flutter/material.dart';

class EnterCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: 560.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SelectableText("Inserir código do posto manualmente",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            )
          ],
        ),
      ),
    );
  }
}
