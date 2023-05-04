// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shareableUsersResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareResponse _$ShareResponseFromJson(Map<String, dynamic> json) =>
    ShareResponse(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Sharee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShareResponseToJson(ShareResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

ShareResponseGeneral _$ShareResponseGeneralFromJson(
        Map<String, dynamic> json) =>
    ShareResponseGeneral(
      status: json['status'] as int,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ShareResponseGeneralToJson(
        ShareResponseGeneral instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Share _$ShareFromJson(Map<String, dynamic> json) => Share(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      accessType: json['access_type'] as String?,
    );

Map<String, dynamic> _$ShareToJson(Share instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'access_type': instance.accessType,
    };
