// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:json_annotation/json_annotation.dart';
import 'package:desafio_mi/models/gas_station_pump_model/gas_station_pump_model.dart';
part 'measurement_fuel_section_model.g.dart';

@JsonSerializable()
class MeasurementFuelModel {
  final GasStationPumpModel pump;
  final num timestamp;
  final num priceperliter;
  final num volume;
  final num total;

  MeasurementFuelModel(
      {required this.pump,
      required this.timestamp,
      required this.priceperliter,
      required this.volume,
      required this.total});

  factory MeasurementFuelModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFuelModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeasurementFuelModelToJson(this);
}
