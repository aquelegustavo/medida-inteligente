// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/components/default_button.dart';
import 'package:desafio_mi/components/or_divider.dart';
import 'package:desafio_mi/pages/new_measurement/widgets/bluetooth_animation.dart';

class NewMeasurementPage extends StatelessWidget {
  static const routeName = '/new';
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: 560.0,
        child: Column(
          children: <Widget>[
            BluetoothAnimation(),
            SizedBox(height: 8.0),
            SelectableText(
              "Localizando posto...",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.0),
            SelectableText(
              "Estamos utilizando tecnologia bluethoot para localizar o posto de combustível.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            OrDivider(),
            DefaultButton(
              text: "Insira o código do posto manualmente",
              action: () {
                Navigator.pushNamed(context, '/new/entercode');
              },
            ),
          ],
        ),
      ),
    );
  }
}
