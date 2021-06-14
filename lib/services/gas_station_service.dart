import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import 'package:json_annotation/json_annotation.dart';
part 'gas_station_service.g.dart';

Future<GasStationData> fetchGasStationData(
    http.Client client, String value) async {
  final response = await client.get(Uri.parse(Api.baseUrl + value));
  print(response.body);

  if (response.statusCode == 200) {
    return GasStationData.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 404) {
    throw ("not-found");
  } else {
    throw ("internal");
  }
}

@JsonSerializable(explicitToJson: true)
class GasStationData {
  final String id;
  final String name;
  final Location location;
  final List<Pump> pumps;

  GasStationData(
      {required this.id,
      required this.name,
      required this.location,
      required this.pumps});

  factory GasStationData.fromJson(Map<String, dynamic> json) =>
      _$GasStationDataFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationDataToJson(this);
}
