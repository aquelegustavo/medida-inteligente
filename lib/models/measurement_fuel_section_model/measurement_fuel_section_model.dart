import 'package:json_annotation/json_annotation.dart';
part 'measurement_fuel_section_model.g.dart';

@JsonSerializable()
class MeasurementFuelModel {
  final num timestamp;
  final num priceperliter;
  final num volume;

  MeasurementFuelModel({
    required this.timestamp,
    required this.priceperliter,
    required this.volume,
  });

  factory MeasurementFuelModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFuelModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeasurementFuelModelToJson(this);
}
