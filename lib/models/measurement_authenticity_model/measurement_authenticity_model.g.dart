// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_authenticity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementAuthenticityModel _$MeasurementAuthenticityModelFromJson(
    Map<String, dynamic> json) {
  return MeasurementAuthenticityModel(
    measurementdata: json['measurementdata'] as String,
    softwareintegrity: json['softwareintegrity'] as int,
  );
}

Map<String, dynamic> _$MeasurementAuthenticityModelToJson(
        MeasurementAuthenticityModel instance) =>
    <String, dynamic>{
      'measurementdata': instance.measurementdata,
      'softwareintegrity': instance.softwareintegrity,
    };
