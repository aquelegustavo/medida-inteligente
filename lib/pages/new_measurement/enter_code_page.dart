import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/new_measurement/widgets/code_form.dart';

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
            SelectableText("Cógido de debug: '123456SC'"),
            SizedBox(height: 48.0),
            CodeForm()
          ],
        ),
      ),
    );
  }
}
