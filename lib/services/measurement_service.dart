// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import 'package:desafio_mi/models/measurement_data_model/measurement_data_model.dart';

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
