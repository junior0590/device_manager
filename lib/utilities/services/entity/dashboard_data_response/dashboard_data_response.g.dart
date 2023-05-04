// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) =>
    DashboardData(
      saved_filter: json['saved_filter'] == null
          ? null
          : SavedFilters.fromJson(json['saved_filter'] as Map<String, dynamic>),
      recordsByStage: (json['recordsByStage'] as List<dynamic>?)
          ?.map((e) => RecordsByStage.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordsBySource: (json['recordsBySource'] as List<dynamic>?)
          ?.map((e) => RecordsBySource.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordsByOwner: (json['recordsByOwner'] as List<dynamic>?)
          ?.map((e) => RecordsByOwner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardDataToJson(DashboardData instance) =>
    <String, dynamic>{
      'saved_filter': instance.saved_filter,
      'recordsByStage': instance.recordsByStage,
      'recordsBySource': instance.recordsBySource,
      'recordsByOwner': instance.recordsByOwner,
    };

SavedFilters _$SavedFiltersFromJson(Map<String, dynamic> json) => SavedFilters(
      selected_module: json['selected_module'] as String?,
      selected_module_label: json['selected_module_label'] as String?,
      selected_module_id: json['selected_module_id'] as int?,
      selected_user_id: json['selected_user_id'] as String?,
    );

Map<String, dynamic> _$SavedFiltersToJson(SavedFilters instance) =>
    <String, dynamic>{
      'selected_module': instance.selected_module,
      'selected_module_label': instance.selected_module_label,
      'selected_module_id': instance.selected_module_id,
      'selected_user_id': instance.selected_user_id,
    };

RecordsByStage _$RecordsByStageFromJson(Map<String, dynamic> json) =>
    RecordsByStage(
      stage: json['stage'] as String?,
      total: json['total'] as int?,
      percentage: json['percentage'] as String?,
    )..url = json['url'] as String?;

Map<String, dynamic> _$RecordsByStageToJson(RecordsByStage instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'total': instance.total,
      'percentage': instance.percentage,
      'url': instance.url,
    };

RecordsBySource _$RecordsBySourceFromJson(Map<String, dynamic> json) =>
    RecordsBySource(
      label: json['label'] as String?,
      value: json['value'] as int?,
      percentage: json['percentage'] as String?,
    );

Map<String, dynamic> _$RecordsBySourceToJson(RecordsBySource instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'percentage': instance.percentage,
    };

RecordsByOwner _$RecordsByOwnerFromJson(Map<String, dynamic> json) =>
    RecordsByOwner(
      id: json['id'] as String?,
      owner: json['owner'] as String?,
      total: json['total'] as int?,
      percentage: json['percentage'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$RecordsByOwnerToJson(RecordsByOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'total': instance.total,
      'percentage': instance.percentage,
      'url': instance.url,
    };

ReportsModules _$ReportsModulesFromJson(Map<String, dynamic> json) =>
    ReportsModules(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ModuleDashboard.fromJson(e as Map<String, dynamic>))
          .toList(),
      saved: json['saved'] == null
          ? null
          : ModuleDashboard.fromJson(json['saved'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportsModulesToJson(ReportsModules instance) =>
    <String, dynamic>{
      'data': instance.data,
      'saved': instance.saved,
    };

ModuleDashboard _$ModuleDashboardFromJson(Map<String, dynamic> json) =>
    ModuleDashboard(
      label: json['label'] as String?,
      label_singular: json['label_singular'] as String?,
      slug: json['slug'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ModuleDashboardToJson(ModuleDashboard instance) =>
    <String, dynamic>{
      'label': instance.label,
      'label_singular': instance.label_singular,
      'slug': instance.slug,
      'id': instance.id,
    };

ReportsUsers _$ReportsUsersFromJson(Map<String, dynamic> json) => ReportsUsers(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserDashboard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportsUsersToJson(ReportsUsers instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserDashboard _$UserDashboardFromJson(Map<String, dynamic> json) =>
    UserDashboard(
      rec_id: json['rec_id'] as String?,
      full_name: json['full_name'] as String?,
    );

Map<String, dynamic> _$UserDashboardToJson(UserDashboard instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'full_name': instance.full_name,
    };
