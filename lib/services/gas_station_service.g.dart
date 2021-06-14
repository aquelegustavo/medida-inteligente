// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_station_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GasStationData _$GasStationDataFromJson(Map<String, dynamic> json) {
  return GasStationData(
    id: json['id'] as String,
    name: json['name'] as String,
    location: Location.fromJson(json['location'] as Map<String, dynamic>),
    pumps: (json['pumps'] as List<dynamic>)
        .map((e) => Pump.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GasStationDataToJson(GasStationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location.toJson(),
      'pumps': instance.pumps.map((e) => e.toJson()).toList(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    json['street'] as String,
    json['city'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
    };

Pump _$PumpFromJson(Map<String, dynamic> json) {
  return Pump(
    id: json['id'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$PumpToJson(Pump instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
