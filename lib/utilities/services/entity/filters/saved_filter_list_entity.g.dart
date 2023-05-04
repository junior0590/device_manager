// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_filter_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedFilterListEntity _$SavedFilterListEntityFromJson(
        Map<String, dynamic> json) =>
    SavedFilterListEntity(
      status: json['status'] as int?,
      filters: (json['filters'] as List<dynamic>?)
          ?.map((e) => SavedFilters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SavedFilterListEntityToJson(
        SavedFilterListEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'filters': instance.filters,
    };

SavedFilters _$SavedFiltersFromJson(Map<String, dynamic> json) => SavedFilters(
      rec_id: json['rec_id'] as int?,
      owner_id: json['owner_id'] as String?,
      label: json['label'] as String?,
      module_id: json['module_id'] as String?,
      current: json['current'] as String?,
      status: json['status'] as String?,
      created_by: json['created_by'] as String?,
      modified_by: json['modified_by'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    )..filter_details = (json['filter_details'] as List<dynamic>?)
        ?.map((e) => FilterDetails.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$SavedFiltersToJson(SavedFilters instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'owner_id': instance.owner_id,
      'label': instance.label,
      'module_id': instance.module_id,
      'current': instance.current,
      'status': instance.status,
      'created_by': instance.created_by,
      'modified_by': instance.modified_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'filter_details': instance.filter_details,
    };

FilterDetails _$FilterDetailsFromJson(Map<String, dynamic> json) =>
    FilterDetails(
      rec_id: json['rec_id'] as int?,
      filter_id: json['filter_id'] as int?,
      user_id: json['user_id'] as int?,
      module_id: json['module_id'] as int?,
      form_id: json['form_id'] as String?,
      filter_group_id: json['filter_group_id'] as String?,
      filter_label: json['filter_label'] as String?,
      field: json['field'] as String?,
      operator: json['operator'] as String?,
      criteria: json['criteria'] as String?,
      type: json['type'] as String?,
      system_type: json['system_type'] as String?,
      current: json['current'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$FilterDetailsToJson(FilterDetails instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'filter_id': instance.filter_id,
      'user_id': instance.user_id,
      'module_id': instance.module_id,
      'form_id': instance.form_id,
      'filter_group_id': instance.filter_group_id,
      'filter_label': instance.filter_label,
      'field': instance.field,
      'operator': instance.operator,
      'criteria': instance.criteria,
      'type': instance.type,
      'system_type': instance.system_type,
      'current': instance.current,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
