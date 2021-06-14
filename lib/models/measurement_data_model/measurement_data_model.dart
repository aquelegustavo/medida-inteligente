import 'package:desafio_mi/models/gas_station_data_model.dart/gas_station_data_model.dart';
import 'package:desafio_mi/models/measurement_authenticity_model/measurement_authenticity_model.dart';
import 'package:desafio_mi/models/measurement_fuel_section_model/measurement_fuel_section_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'measurement_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasurementDataModel {
  final GasStationDataModel gasStation;
  final MeasurementFuelModel fuelSection;
  final MeasurementAuthenticityModel authenticity;

  MeasurementDataModel(
      {required this.gasStation,
      required this.fuelSection,
      required this.authenticity});

  factory MeasurementDataModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeasurementDataModelToJson(this);
}
