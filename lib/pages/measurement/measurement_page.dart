import 'package:desafio_mi/components/text_section.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/select_gas_pumps/widgets/gas_pumps_keyboard_form.dart';

class MeasurementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: 560.0,
        child: Wrap(
          children: <Widget>[
            TextSection(
              title: 'Dados do Estabelecimento',
              content: [
                {'label': 'Rua', 'text': 'Vestibulum et erat'},
                {'label': 'Bairro', 'text': 'Nunc aliquet ullamcorper'},
                {'label': 'Cidade', 'text': 'Maecenas'},
                {'label': 'CEP', 'text': '000.000.000'}
              ],
            ),
            TextSection(
              title: 'Dados do Abastecimento',
              content: [
                {'label': 'Rua', 'text': 'Vestibulum et erat'},
                {'label': 'Bairro', 'text': 'Nunc aliquet ullamcorper'},
                {'label': 'Cidade', 'text': 'Maecenas'},
                {'label': 'CEP', 'text': '000.000.000'}
              ],
            ),
            TextSection(
              title: 'Dados de Autenticidade',
              content: [
                {'label': 'Rua', 'text': 'Vestibulum et erat'},
                {'label': 'Bairro', 'text': 'Nunc aliquet ullamcorper'},
                {'label': 'Cidade', 'text': 'Maecenas'},
                {'label': 'CEP', 'text': '000.000.000'}
              ],
            ),
          ],
        ),
      ),
    );
  }
}
