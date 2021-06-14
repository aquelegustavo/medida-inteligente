// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_fuel_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementFuelModel _$MeasurementFuelModelFromJson(Map<String, dynamic> json) {
  return MeasurementFuelModel(
    timestamp: json['timestamp'] as num,
    priceperliter: json['priceperliter'] as num,
    volume: json['volume'] as num,
  );
}

Map<String, dynamic> _$MeasurementFuelModelToJson(
        MeasurementFuelModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'priceperliter': instance.priceperliter,
      'volume': instance.volume,
    };
