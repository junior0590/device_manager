// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electrical_upgrades_calculate_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElectricalUpgradesCalculateEntity _$ElectricalUpgradesCalculateEntityFromJson(
        Map<String, dynamic> json) =>
    ElectricalUpgradesCalculateEntity(
      electrical_upgrades: (json['electrical_upgrades'] as List<dynamic>?)
          ?.map(
              (e) => ElectricalUpgradesList.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..utilities = (json['utilities'] as List<dynamic>?)
        ?.map((e) => UtilitiesList.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$ElectricalUpgradesCalculateEntityToJson(
        ElectricalUpgradesCalculateEntity instance) =>
    <String, dynamic>{
      'electrical_upgrades': instance.electrical_upgrades,
      'utilities': instance.utilities,
    };

ElectricalUpgradesList _$ElectricalUpgradesListFromJson(
        Map<String, dynamic> json) =>
    ElectricalUpgradesList(
      electrical_upgrades: (json['electrical_upgrades'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ElectricalUpgradesListToJson(
        ElectricalUpgradesList instance) =>
    <String, dynamic>{
      'electrical_upgrades': instance.electrical_upgrades,
    };

UtilitiesList _$UtilitiesListFromJson(Map<String, dynamic> json) =>
    UtilitiesList(
      utilities: (json['utilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UtilitiesListToJson(UtilitiesList instance) =>
    <String, dynamic>{
      'utilities': instance.utilities,
    };
