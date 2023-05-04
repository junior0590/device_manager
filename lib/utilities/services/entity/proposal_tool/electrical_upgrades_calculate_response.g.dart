// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electrical_upgrades_calculate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElectricalUpgradesCalculateResponse
    _$ElectricalUpgradesCalculateResponseFromJson(Map<String, dynamic> json) =>
        ElectricalUpgradesCalculateResponse(
          total: (json['total'] as num?)?.toDouble(),
          status: json['status'] as int?,
        );

Map<String, dynamic> _$ElectricalUpgradesCalculateResponseToJson(
        ElectricalUpgradesCalculateResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'status': instance.status,
    };
