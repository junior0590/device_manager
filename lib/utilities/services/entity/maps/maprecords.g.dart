// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maprecords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapRecords _$MapRecordsFromJson(Map<String, dynamic> json) => MapRecords(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MapData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapRecordsToJson(MapRecords instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

MapData _$MapDataFromJson(Map<String, dynamic> json) => MapData(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      full_address: json['full_address'] as String?,
      full_name: json['full_name'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$MapDataToJson(MapData instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'full_address': instance.full_address,
      'full_name': instance.full_name,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'country': instance.country,
    };
