// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:json_annotation/json_annotation.dart';
part 'gas_station_pump_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GasStationPumpModel {
  String id;
  String title;

  GasStationPumpModel({required this.id, required this.title});

  factory GasStationPumpModel.fromJson(Map<String, dynamic> json) =>
      _$GasStationPumpModelFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationPumpModelToJson(this);
}
