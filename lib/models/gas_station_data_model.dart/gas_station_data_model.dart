import 'package:desafio_mi/models/gas_station/location_model/location_model.dart';
import 'package:desafio_mi/models/gas_station_pump_model/gas_station_pump_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'gas_station_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GasStationDataModel {
  final String id;
  final String name;
  final GasStationLocationModel location;
  final List<GasStationPumpModel> pumps;

  GasStationDataModel(
      {required this.id,
      required this.name,
      required this.location,
      required this.pumps});

  factory GasStationDataModel.fromJson(Map<String, dynamic> json) =>
      _$GasStationDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationDataModelToJson(this);
}
