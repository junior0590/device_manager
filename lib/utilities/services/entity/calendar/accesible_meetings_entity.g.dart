// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accesible_meetings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccesibleMeetingsEntity _$AccesibleMeetingsEntityFromJson(
        Map<String, dynamic> json) =>
    AccesibleMeetingsEntity(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              AccesibleMeetingsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccesibleMeetingsEntityToJson(
        AccesibleMeetingsEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

AccesibleMeetingsFields _$AccesibleMeetingsFieldsFromJson(
        Map<String, dynamic> json) =>
    AccesibleMeetingsFields(
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      organization_name: json['organization_name'] as String?,
      avatar: json['avatar'] as String?,
      rec_id: json['rec_id'] as int?,
      short_name: json['short_name'] as String?,
      seleted: json['seleted'] as bool?,
    );

Map<String, dynamic> _$AccesibleMeetingsFieldsToJson(
        AccesibleMeetingsFields instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'email': instance.email,
      'organization_name': instance.organization_name,
      'avatar': instance.avatar,
      'rec_id': instance.rec_id,
      'short_name': instance.short_name,
      'seleted': instance.seleted,
    };
