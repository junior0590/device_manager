// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_edit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordEdit _$RecordEditFromJson(Map<String, dynamic> json) => RecordEdit(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : FieldData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecordEditToJson(RecordEdit instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

FieldData _$FieldDataFromJson(Map<String, dynamic> json) => FieldData(
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FieldDataToJson(FieldData instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
