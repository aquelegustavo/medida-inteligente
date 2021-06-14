import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/models/gas_station_change_notifier_model.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:provider/provider.dart';

class MeasurementPage extends StatelessWidget {
  static const routeName = '/measurement';

  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Consumer<ChangeNotifGasStationModelier>(
        builder: (context, gasStation, child) {
          if (gasStation.hasData) {
            return Container(
              padding: EdgeInsets.all(24.0),
              width: 560.0,
              child: Consumer<ChangeNotifGasStationModelier>(
                builder: (context, data, child) {
                  return Container(
                    padding: EdgeInsets.all(24.0),
                    width: 560.0,
                    child: Wrap(
                      children: <Widget>[
                        TextSection(
                          title: 'Dados do Estabelecimento',
                          content: [
                            {'label': 'Rua', 'text': 'Vestibulum et erat'},
                            {
                              'label': 'Bairro',
                              'text': 'Nunc aliquet ullamcorper'
                            },
                            {'label': 'Cidade', 'text': 'Maecenas'},
                            {'label': 'CEP', 'text': '000.000.000'}
                          ],
                        ),
                        TextSection(
                          title: 'Dados do Abastecimento',
                          content: [
                            {'label': 'Rua', 'text': 'Vestibulum et erat'},
                            {
                              'label': 'Bairro',
                              'text': 'Nunc aliquet ullamcorper'
                            },
                            {'label': 'Cidade', 'text': 'Maecenas'},
                            {'label': 'CEP', 'text': '000.000.000'}
                          ],
                        ),
                        TextSection(
                          title: 'Dados de Autenticidade',
                          content: [
                            {'label': 'Rua', 'text': 'Vestibulum et erat'},
                            {
                              'label': 'Bairro',
                              'text': 'Nunc aliquet ullamcorper'
                            },
                            {'label': 'Cidade', 'text': 'Maecenas'},
                            {'label': 'CEP', 'text': '000.000.000'}
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return FutureBuilder(
                future:
                    Navigator.pushNamed(context, NewMeasurementPage.routeName),
                builder: (context, snapshot) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                });
          }
        },
      ),
    );
  }
}
