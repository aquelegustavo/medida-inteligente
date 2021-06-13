import 'package:desafio_mi/components/text_section.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';

class NavigationSelectPumpsToMeasurementArguments {
  /*
   * As variáveis gasStationId e gasStationPumpId 
   * são rebidas, via sistema de rotas, pelo formulário do selecionador de 
   * bombas da página [select_pumps]
   * 
   */
  final String gasStationId;
  final int gasStationPumpId;

  NavigationSelectPumpsToMeasurementArguments(
      this.gasStationId, this.gasStationPumpId);
}

class MeasurementPage extends StatelessWidget {
  static const routeName = '/measurement';

  @override
  Widget build(BuildContext context) {
    final _navigationArguments = ModalRoute.of(context)!.settings.arguments
        as NavigationSelectPumpsToMeasurementArguments;

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
