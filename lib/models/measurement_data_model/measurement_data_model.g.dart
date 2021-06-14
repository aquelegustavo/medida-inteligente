// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementDataModel _$MeasurementDataModelFromJson(Map<String, dynamic> json) {
  return MeasurementDataModel(
    gasStation: GasStationDataModel.fromJson(
        json['gasStation'] as Map<String, dynamic>),
    fuelSection: json['fuelSection'],
    authenticity: json['authenticity'],
  );
}

Map<String, dynamic> _$MeasurementDataModelToJson(
        MeasurementDataModel instance) =>
    <String, dynamic>{
      'gasStation': instance.gasStation.toJson(),
      'fuelSection': instance.fuelSection,
      'authenticity': instance.authenticity,
    };
