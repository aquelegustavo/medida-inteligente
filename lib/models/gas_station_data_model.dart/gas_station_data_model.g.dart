// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_station_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GasStationDataModel _$GasStationDataModelFromJson(Map<String, dynamic> json) {
  return GasStationDataModel(
    id: json['id'] as String,
    name: json['name'] as String,
    location: json['location'],
    pumps: (json['pumps'] as List<dynamic>)
        .map((e) => GasStationPumpModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GasStationDataModelToJson(
        GasStationDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'pumps': instance.pumps.map((e) => e.toJson()).toList(),
    };
