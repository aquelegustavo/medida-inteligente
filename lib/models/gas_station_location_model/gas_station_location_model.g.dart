// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_station_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GasStationLocationModel _$GasStationLocationModelFromJson(
    Map<String, dynamic> json) {
  return GasStationLocationModel(
    json['street'] as String,
    json['neighborhood'] as String,
    json['city'] as String,
    json['cep'] as String,
  );
}

Map<String, dynamic> _$GasStationLocationModelToJson(
        GasStationLocationModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'cep': instance.cep,
    };
