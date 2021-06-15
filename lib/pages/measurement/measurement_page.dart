import 'package:desafio_mi/components/default_button.dart';
import 'package:desafio_mi/components/text_section.dart';
import 'package:desafio_mi/models/gas_station_change_notifier_model/gas_station_change_notifier_model.dart';
import 'package:desafio_mi/models/measurement_data_model/measurement_data_model.dart';
import 'package:desafio_mi/pages/measurement/widgets/authenticity_section.dart';
import 'package:desafio_mi/pages/measurement/widgets/fuel_section.dart';
import 'package:desafio_mi/pages/measurement/widgets/gas_station_section.dart';
import 'package:desafio_mi/pages/new_measurement/new_measurement_page.dart';
import 'package:desafio_mi/services/measurement_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:desafio_mi/components/app_body.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MeasurementPage extends StatefulWidget {
  static const routeName = '/measurement';
  MeasurementPage({Key? key}) : super(key: key);

  @override
  _MeasurementPageState createState() => _MeasurementPageState();
}

class _MeasurementPageState extends State<MeasurementPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GasStationChangeNotifierModel>(
      builder: (context, gasStation, child) {
        if (gasStation.hasData && gasStation.hasPumpSelected) {
          return FutureBuilder(
            future: fetchMeasurementData(
                http.Client(), gasStation.data.id, gasStation.selectedPump.id),
            builder: (context, AsyncSnapshot<MeasurementDataModel> snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!;

                return AppBody(
                  child: Container(
                      padding: EdgeInsets.all(24.0),
                      width: 768.0,
                      child: Column(
                        children: <Widget>[
                          Wrap(
                            spacing: 16.0, //space x
                            runSpacing: 12.0, //space y
                            alignment: WrapAlignment.start,
                            children: <Widget>[
                              GasStationSection(data: data.gasStation),
                              FuelSection(data: data.fuelSection),
                              AuthenticitySection(data: data.authenticity),
                            ],
                          ),
                          SizedBox(height: 32),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: OutlinedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'Ação indisponível no modo demonstração :('),
                                  ),
                                );
                              },
                              child: Container(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(Icons.download,
                                        semanticLabel: "Ícone de download"),
                                    SizedBox(width: 4),
                                    Text('Download')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: OutlinedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'Ação indisponível no modo demonstração :('),
                                  ),
                                );
                              },
                              child: Container(
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(Icons.report,
                                        semanticLabel:
                                            "Ícone de reportar problema"),
                                    SizedBox(width: 4),
                                    Text('Reportar problema')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          DefaultButton(
                            text: 'Finalizar',
                            action: () {
                              Navigator.popUntil(
                                  context, ModalRoute.withName('/'));
                            },
                          ),
                        ],
                      )),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Center(child: CircularProgressIndicator());
            },
          );
        } else {
          return FutureBuilder(
            future: Navigator.pushNamed(context, NewMeasurementPage.routeName),
            builder: (context, snapshot) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        }
      },
    );
  }
}
