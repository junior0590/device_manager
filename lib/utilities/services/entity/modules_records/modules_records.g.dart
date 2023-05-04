// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModulesRecords _$ModulesRecordsFromJson(Map<String, dynamic> json) =>
    ModulesRecords(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ModuleDetails.fromJson(e as Map<String, dynamic>)),
      ),
    )..status = json['status'] as int?;

Map<String, dynamic> _$ModulesRecordsToJson(ModulesRecords instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ModuleDetails _$ModuleDetailsFromJson(Map<String, dynamic> json) =>
    ModuleDetails(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => RecordModule.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$ModuleDetailsToJson(ModuleDetails instance) =>
    <String, dynamic>{
      'records': instance.records,
      'slug': instance.slug,
    };

RecordModule _$RecordModuleFromJson(Map<String, dynamic> json) => RecordModule(
      record_id: json['record_id'] as int?,
      label: json['label'] as String?,
      slug: json['slug'] as String?,
      module_name: json['module_name'] as String?,
      record_name: json['record_name'] as String?,
      record_status: json['record_status'] as String?,
    );

Map<String, dynamic> _$RecordModuleToJson(RecordModule instance) =>
    <String, dynamic>{
      'record_id': instance.record_id,
      'label': instance.label,
      'slug': instance.slug,
      'module_name': instance.module_name,
      'record_name': instance.record_name,
      'record_status': instance.record_status,
    };
