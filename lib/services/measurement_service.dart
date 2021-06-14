import 'dart:async';
import 'dart:convert';
import 'package:desafio_mi/services/gas_station_service.dart';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import 'package:json_annotation/json_annotation.dart';
part 'measurement_service.g.dart';

Future<MeasurementData> fetchMeasurementDataData(
    http.Client client, String gasStationId, String pumpId) async {
  final response = await client
      .get(Uri.parse("${Api.baseUrl}$gasStationId/measurement/$pumpId"));

  if (response.statusCode == 200) {
    return MeasurementData.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 404) {
    throw ("not-found");
  } else {
    throw ("internal");
  }
}

@JsonSerializable(explicitToJson: true)
class MeasurementData {
  final Object gasStation;
  final Object fuelSection;
  final Object authenticity;

  MeasurementData(
      {required this.gasStation,
      required this.fuelSection,
      required this.authenticity});

  factory MeasurementData.fromJson(Map<String, dynamic> json) {
    return MeasurementData(
        gasStation: _GasStationData.fromJson(json['gasStation']),
        fuelSection: _FuelSectionData.fromJson(json['fuelSection']),
        authenticity: _AuthenticityData.fromJson(json['authenticity']));
  }
}

class _GasStationData {
  final String id;
  final String name;
  final Location location;

  _GasStationData(
      {required this.id, required this.name, required this.location});

  factory _GasStationData.fromJson(Map<String, dynamic> json) {
    return _GasStationData(id: json['id'], name: json['name'], location: {
      "street": json['location']['street'],
      "neighborhood": json['location']['neighborhood'],
      "city": json['location']['city'],
      "cep": json['location']['cep'],
    });
  }
}

class _FuelSectionData {
  final Map<String, String> pump;

  final num timestamp;
  final num priceperliter;
  final num volume;

  _FuelSectionData(
      {required this.pump,
      required this.timestamp,
      required this.priceperliter,
      required this.volume});

  factory _FuelSectionData.fromJson(Map<String, dynamic> json) {
    return _FuelSectionData(
        pump: json['pump'],
        timestamp: json['timestamp'],
        priceperliter: json['priceperliter'],
        volume: json['volume']);
  }
}
