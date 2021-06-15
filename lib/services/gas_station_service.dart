import 'dart:async';
import 'dart:convert';
import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';
import 'package:http/http.dart' as http;
import '../config/api.dart';

Future<GasStationDataModel> fetchGasStationData(
    http.Client client, String value) async {
  final response = await client.get(Uri.parse(Api.baseUrl + value));

  if (response.statusCode == 200) {
    return GasStationDataModel.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 404) {
    throw ("not-found");
  } else {
    throw ("internal");
  }
}
