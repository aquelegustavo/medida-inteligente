import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../config/api.dart';

class GasStationInheritedWidget extends InheritedWidget {
  const GasStationInheritedWidget({
    Key? key,
    required this.color,
    gasStationId,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  void updateGasStation(gasStationId) {}

  static GasStationInheritedWidget of(BuildContext context) {
    final GasStationInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<GasStationInheritedWidget>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(GasStationInheritedWidget old) => color != old.color;
}

Future<GasStationData> fetchGasStationData(
    http.Client client, String value) async {
  final response = await client.get(Uri.parse(Api.baseUrl + value));

  if (response.statusCode == 200) {
    return GasStationData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class GasStationData {
  final String id;
  final Map<String, String> location;
  final Map<String, String> pumps;

  GasStationData(
      {required this.id, required this.location, required this.pumps});

  factory GasStationData.fromJson(Map<String, dynamic> json) {
    return GasStationData(id: json['id'], location: {
      "street": json['location']['street'],
      "neighborhood": json['location']['neighborhood'],
      "city": json['location']['city'],
      "cep": json['location']['cep'],
    }, pumps: {
      "id": json['pumps']['id'],
      "title": json['pumps']['title']
    });
  }
}
