// Código por Gustavo Simões
// https://github.com/gustavo-simoes

import 'package:json_annotation/json_annotation.dart';
part 'measurement_authenticity_model.g.dart';

@JsonSerializable()
class MeasurementAuthenticityModel {
  final String measurementdata;
  final int softwareintegrity;

  MeasurementAuthenticityModel({
    required this.measurementdata,
    required this.softwareintegrity,
  });

  factory MeasurementAuthenticityModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementAuthenticityModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeasurementAuthenticityModelToJson(this);
}
