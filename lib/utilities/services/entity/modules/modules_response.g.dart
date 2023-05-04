// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleResponse _$ModuleResponseFromJson(Map<String, dynamic> json) =>
    ModuleResponse(
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$ModuleResponseToJson(ModuleResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Module _$ModuleFromJson(Map<String, dynamic> json) => Module(
      name: json['name'] as String?,
      nameSingular: json['name_singular'] as String?,
      label: json['label'] as String?,
      labelSingular: json['label_singular'] as String?,
      tableName: json['table_name'] as String?,
    );

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      'name': instance.name,
      'name_singular': instance.nameSingular,
      'label': instance.label,
      'label_singular': instance.labelSingular,
      'table_name': instance.tableName,
    };
