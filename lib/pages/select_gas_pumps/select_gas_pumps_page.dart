import 'dart:async';
import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/models/gas_station_change_notifier_model/gas_station_change_notifier_model.dart';
import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/services/gas_station_service.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mi/components/app_body.dart';
import 'package:desafio_mi/pages/select_gas_pumps/widgets/gas_pumps_keyboard_form.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class SelectGasPumpsPage extends StatefulWidget {
  SelectGasPumpsPage({Key? key}) : super(key: key);
  static const routeName = '/select';

  @override
  _SelectGasPumpsPageState createState() => _SelectGasPumpsPageState();
}

class _SelectGasPumpsPageState extends State<SelectGasPumpsPage> {
  late final Future<GasStationDataModel> futureGasStation;

  @override
  void initState() {
    super.initState();
    futureGasStation = fetchGasStationData(http.Client(), '123456sc');
  }

  @override
  Widget build(BuildContext context) {
    return AppBody(
      child: Consumer<GasStationChangeNotifierModel>(
        builder: (context, gasStation, child) {
          if (gasStation.hasData) {
            GasStationDataModel data = gasStation.data;

            return Container(
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
                        title: gasStation.data.name,
                        content: [
                          {
                            'label': 'Rua',
                            'text': data.location.street,
                          },
                          {
                            'label': 'Bairro',
                            'text': data.location.neighborhood
                          },
                          {'label': 'Cidade', 'text': data.location.city},
                          {'label': 'CEP', 'text': data.location.cep},
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
                ));
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
