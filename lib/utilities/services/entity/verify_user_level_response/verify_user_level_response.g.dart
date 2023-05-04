// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_level_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyUserLevelResponse _$VerifyUserLevelResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyUserLevelResponse(
      isMaster: json['isMaster'] as int?,
      isAdmin: json['isAdmin'] as int?,
      isUser: json['isUser'] as int?,
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$VerifyUserLevelResponseToJson(
        VerifyUserLevelResponse instance) =>
    <String, dynamic>{
      'isMaster': instance.isMaster,
      'isAdmin': instance.isAdmin,
      'isUser': instance.isUser,
      'permissions': instance.permissions,
      'status': instance.status,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) => Permissions(
      create_proposals: json['create_proposals'] as int?,
      delete_proposals: json['delete_proposals'] as int?,
      leads_map_access: json['leads_map_access'] as int?,
      leads_map_create: json['leads_map_create'] as int?,
      leads_map_view_type: json['leads_map_view_type'] as String?,
    );

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'create_proposals': instance.create_proposals,
      'delete_proposals': instance.delete_proposals,
      'leads_map_access': instance.leads_map_access,
      'leads_map_create': instance.leads_map_create,
      'leads_map_view_type': instance.leads_map_view_type,
    };
