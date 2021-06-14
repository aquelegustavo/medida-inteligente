import 'package:json_annotation/json_annotation.dart';
part 'pump_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PumpModel {
  String id;
  String title;

  PumpModel({required this.id, required this.title});

  factory PumpModel.fromJson(Map<String, dynamic> json) =>
      _$PumpModelFromJson(json);
  Map<String, dynamic> toJson() => _$PumpModelToJson(this);
}
