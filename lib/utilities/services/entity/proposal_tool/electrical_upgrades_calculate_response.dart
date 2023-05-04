import 'package:json_annotation/json_annotation.dart';

part 'electrical_upgrades_calculate_response.g.dart';

@JsonSerializable()
class ElectricalUpgradesCalculateResponse {

  double? total;

  int? status;

  ElectricalUpgradesCalculateResponse({this.total, this.status});

  factory ElectricalUpgradesCalculateResponse.fromJson(Map<String, dynamic> json) => _$ElectricalUpgradesCalculateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricalUpgradesCalculateResponseToJson(this);

}