// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pseg_form_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PsegFormListEntity _$PsegFormListEntityFromJson(Map<String, dynamic> json) =>
    PsegFormListEntity(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PsegFormListFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PsegFormListEntityToJson(PsegFormListEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PsegFormListFields _$PsegFormListFieldsFromJson(Map<String, dynamic> json) =>
    PsegFormListFields(
      rec_id: json['rec_id'] as int?,
      owner_id: json['owner_id'] as int?,
      form_data: json['form_data'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      related_record_name: json['related_record_name'] as String?,
      owner_name: json['owner_name'] as String?,
    );

Map<String, dynamic> _$PsegFormListFieldsToJson(PsegFormListFields instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'owner_id': instance.owner_id,
      'form_data': instance.form_data,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'related_record_name': instance.related_record_name,
      'owner_name': instance.owner_name,
    };
