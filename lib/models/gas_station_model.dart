import 'package:json_annotation/json_annotation.dart';
part 'gas_station_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GasStationModel {
  final String id;
  final String name;
  final Location location;
  final List<Pump> pumps;

  GasStationModel(
      {required this.id,
      required this.name,
      required this.location,
      required this.pumps});

  factory GasStationModel.fromJson(Map<String, dynamic> json) =>
      _$GasStationModelFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationModelToJson(this);
}
