import 'package:desafio_mi/services/gas_station_service.dart';
import 'package:flutter/material.dart';

class GasStationModeChangeNotiflier extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<GasStationData> _gasStationList = [];

  bool get hasData => _gasStationList.length == 1;
  GasStationData get data => _gasStationList[0];

  void update(GasStationData gasStation) {
    remove();
    _gasStationList.add(gasStation);
    notifyListeners();
  }

  void remove() {
    _gasStationList.clear();
    notifyListeners();
  }
}
