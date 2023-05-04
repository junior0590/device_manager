// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordCreate _$RecordCreateFromJson(Map<String, dynamic> json) => RecordCreate(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : FieldDataCreate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecordCreateToJson(RecordCreate instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

FieldDataCreate _$FieldDataCreateFromJson(Map<String, dynamic> json) =>
    FieldDataCreate(
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FieldDataCreateToJson(FieldDataCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
