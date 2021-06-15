// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:flutter/material.dart';
import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';
import 'package:desafio_mi/models/gas_station_pump_model/gas_station_pump_model.dart';

class GasStationChangeNotifierModel extends ChangeNotifier {
  final List<GasStationDataModel> _gasStationList = [];
  final List<String> _selectedPumpIdList = [];

  bool get hasData => _gasStationList.length == 1;
  GasStationDataModel get data => _gasStationList[0];

  bool get hasPumpSelected => _selectedPumpIdList.length == 1;
  GasStationPumpModel get selectedPump => _gasStationList[0]
      .pumps
      .where((i) => i.id == _selectedPumpIdList[0])
      .toList()[0];

  void update(GasStationDataModel gasStation) {
    _gasStationList.clear();
    _gasStationList.add(gasStation);
    notifyListeners();
  }

  void updadeSelectedPump(String pumpId) {
    _selectedPumpIdList.clear();
    _selectedPumpIdList.add(pumpId);
    notifyListeners();
  }

  void clearAll() {
    _gasStationList.clear();
    _selectedPumpIdList.clear();
    notifyListeners();
  }
}
