import 'package:json_annotation/json_annotation.dart';

part 'electrical_upgrades_calculate_entity.g.dart';

@JsonSerializable()
class ElectricalUpgradesCalculateEntity {

  List<ElectricalUpgradesList>? electrical_upgrades;

  List<UtilitiesList>? utilities;

  ElectricalUpgradesCalculateEntity({this.electrical_upgrades});

  factory ElectricalUpgradesCalculateEntity.fromJson(Map<String, dynamic> json) => _$ElectricalUpgradesCalculateEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricalUpgradesCalculateEntityToJson(this);

}

@JsonSerializable()
class ElectricalUpgradesList {

  List<String>? electrical_upgrades;

  ElectricalUpgradesList({this.electrical_upgrades});

  factory ElectricalUpgradesList.fromJson(Map<String, dynamic> json) => _$ElectricalUpgradesListFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricalUpgradesListToJson(this);

}

@JsonSerializable()
class UtilitiesList {

  List<String>? utilities;

  UtilitiesList({this.utilities});

  factory UtilitiesList.fromJson(Map<String, dynamic> json) => _$UtilitiesListFromJson(json);
  Map<String, dynamic> toJson() => _$UtilitiesListToJson(this);

}


