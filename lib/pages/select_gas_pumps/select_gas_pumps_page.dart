import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/services/gas_station_service.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/select_gas_pumps/widgets/gas_pumps_keyboard_form.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:provider/provider.dart';
import 'package:desafio_mi/models/gas_station_change_notifier_model.dart';

class SelectGasPumpsPage extends StatefulWidget {
  SelectGasPumpsPage({Key? key}) : super(key: key);
  static const routeName = '/select';

  @override
  _SelectGasPumpsPageState createState() => _SelectGasPumpsPageState();
}

class _SelectGasPumpsPageState extends State<SelectGasPumpsPage> {
  late final Future<GasStationData> futureGasStation;

  @override
  void initState() {
    super.initState();
    futureGasStation = fetchGasStationData(http.Client(), '123456sc');
  }

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
                  return Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextSection(
                          title: 'data.gasStation.name',
                          content: [
                            {'label': 'Rua', 'text': 'gaas]].location.street'},
                            {
                              'label': 'Bairro',
                              'text': 'Nunc aliquet ullamcorper'
                            },
                            {'label': 'Cidade', 'text': 'Maecenas'},
                            {'label': 'CEP', 'text': gasStation.data.name}
                          ],
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, NewMeasurementPage.routeName);
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
                      GasPumpsKeyboard(
                          gasStationId: gasStation.data.id,
                          gasStationPumpsList: gasStation.data.pumps)
                    ],
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
