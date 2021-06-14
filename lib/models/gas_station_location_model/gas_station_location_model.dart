import 'package:json_annotation/json_annotation.dart';
part 'gas_station_location_model.g.dart';

@JsonSerializable()
class GasStationLocationModel {
  String street;
  String neighborhood;
  String city;
  String cep;

  GasStationLocationModel(this.street, this.neighborhood, this.city, this.cep);

  factory GasStationLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GasStationLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$GasStationLocationModelToJson(this);
}
