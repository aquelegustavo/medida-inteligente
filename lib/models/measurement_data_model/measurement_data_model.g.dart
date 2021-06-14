// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementDataModel _$MeasurementDataModelFromJson(Map<String, dynamic> json) {
  return MeasurementDataModel(
    gasStation: GasStationDataModel.fromJson(
        json['gasStation'] as Map<String, dynamic>),
    fuelSection: MeasurementFuelModel.fromJson(
        json['fuelSection'] as Map<String, dynamic>),
    authenticity: MeasurementAuthenticityModel.fromJson(
        json['authenticity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasurementDataModelToJson(
        MeasurementDataModel instance) =>
    <String, dynamic>{
      'gasStation': instance.gasStation.toJson(),
      'fuelSection': instance.fuelSection.toJson(),
      'authenticity': instance.authenticity.toJson(),
    };
