import 'package:desafio_mi/components/text_section.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/select_gas_pumps/widgets/gas_pumps_keyboard_form.dart';

class SelectGasPumpsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: 560.0,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextSection(
                title: 'Posto de gasolina Lorem Impsum',
                content: [
                  {'label': 'Rua', 'text': 'Vestibulum et erat'},
                  {'label': 'Bairro', 'text': 'Nunc aliquet ullamcorper'},
                  {'label': 'Cidade', 'text': 'Maecenas'},
                  {'label': 'CEP', 'text': '000.000.000'}
                ],
              ),
            ),
            SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new');
                },
                child: Text("Buscar Novamente"),
              ),
            ),
            SizedBox(height: 48.0),
            Align(
              alignment: Alignment.centerLeft,
              child: SelectableText(
                "Selecione a Bomba",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            SizedBox(height: 22.0),
            GasPumpsKeyboard(title: 'title')
          ],
        ),
      ),
    );
  }
}
