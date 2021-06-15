import 'dart:async';
import 'dart:convert';
import 'package:desafio_mi/models/gas_station_pump_model/gas_station_pump_model.dart';
import 'package:desafio_mi/models/measurement_data_model/measurement_data_model.dart';
import 'package:http/http.dart' as http;
import '../config/api.dart';

Future<MeasurementDataModel> fetchMeasurementData(
    http.Client client, String gasStationId, String pumpId) async {
  final response = await client
      .get(Uri.parse("${Api.baseUrl}$gasStationId/measurement/$pumpId"));

  if (response.statusCode == 200) {
    return MeasurementDataModel.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 404) {
    throw ("not-found");
  } else {
    throw ("internal");
  }
}
