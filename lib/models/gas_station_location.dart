import 'package:json_annotation/json_annotation.dart';
part 'gas_station_location.g.dart';

@JsonSerializable()
class GasStationLocationModel {
  String street;
  String city;

  GasStationLocationModel(this.street, this.city);

  factory GasStationLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GasStationLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationLocationModelToJson(this);
}
