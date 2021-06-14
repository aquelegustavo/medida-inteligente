import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';

import 'package:flutter/material.dart';

class GasStationChangeNotifierModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<GasStationDataModel> _gasStationList = [];

  bool get hasData => _gasStationList.length == 1;
  GasStationDataModel get data => _gasStationList[0];

  void update(GasStationDataModel gasStation) {
    remove();
    print(
        "[GasStationModeChangeNotiflier] Valor dentro do GasStationModeChangeNotiflier alterado: $gasStation");
    _gasStationList.add(gasStation);
    notifyListeners();
  }

  void remove() {
    _gasStationList.clear();
    notifyListeners();
  }
}
