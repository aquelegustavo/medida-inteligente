// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_station_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GasStationData _$GasStationDataFromJson(Map<String, dynamic> json) {
  return GasStationData(
    id: json['id'] as String,
    name: json['name'] as String,
    location: json['location'],
    pumps: json['pumps'] as List<dynamic>,
  );
}

Map<String, dynamic> _$GasStationDataToJson(GasStationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'pumps': instance.pumps,
    };
