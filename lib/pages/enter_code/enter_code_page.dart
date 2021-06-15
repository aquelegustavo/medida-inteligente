// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/enter_code/widgets/code_form.dart';

class EnterCodePage extends StatelessWidget {
  static const routeName = '/new/entercode';

  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: 560.0,
        child: Column(
          children: <Widget>[
            SelectableText("Inserir código do posto manualmente",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3),
            SizedBox(height: 48.0),
            CodeForm()
          ],
        ),
      ),
    );
  }
}
