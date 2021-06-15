// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_fuel_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementFuelModel _$MeasurementFuelModelFromJson(Map<String, dynamic> json) {
  return MeasurementFuelModel(
    pump: GasStationPumpModel.fromJson(json['pump'] as Map<String, dynamic>),
    timestamp: json['timestamp'] as num,
    priceperliter: json['priceperliter'] as num,
    volume: json['volume'] as num,
    total: json['total'] as num,
  );
}

Map<String, dynamic> _$MeasurementFuelModelToJson(
        MeasurementFuelModel instance) =>
    <String, dynamic>{
      'pump': instance.pump,
      'timestamp': instance.timestamp,
      'priceperliter': instance.priceperliter,
      'volume': instance.volume,
      'total': instance.total,
    };
