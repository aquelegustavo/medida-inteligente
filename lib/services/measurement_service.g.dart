// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementData _$MeasurementDataFromJson(Map<String, dynamic> json) {
  return MeasurementData(
    gasStation: json['gasStation'] as Object,
    fuelSection: json['fuelSection'] as Object,
    authenticity: json['authenticity'] as Object,
  );
}

Map<String, dynamic> _$MeasurementDataToJson(MeasurementData instance) =>
    <String, dynamic>{
      'gasStation': instance.gasStation,
      'fuelSection': instance.fuelSection,
      'authenticity': instance.authenticity,
    };
