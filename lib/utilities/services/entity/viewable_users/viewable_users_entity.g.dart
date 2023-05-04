// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewable_users_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewableUsersEntity _$ViewableUsersEntityFromJson(Map<String, dynamic> json) =>
    ViewableUsersEntity(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ViewableUsersData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ViewableUsersEntityToJson(
        ViewableUsersEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

ViewableUsersData _$ViewableUsersDataFromJson(Map<String, dynamic> json) =>
    ViewableUsersData(
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      organization_name: json['organization_name'] as String?,
      avatar: json['avatar'] as String?,
      rec_id: json['rec_id'] as int?,
      short_name: json['short_name'] as String?,
    );

Map<String, dynamic> _$ViewableUsersDataToJson(ViewableUsersData instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'email': instance.email,
      'organization_name': instance.organization_name,
      'avatar': instance.avatar,
      'rec_id': instance.rec_id,
      'short_name': instance.short_name,
    };
