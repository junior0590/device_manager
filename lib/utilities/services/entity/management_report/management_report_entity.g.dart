// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'management_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManagementReportEntity _$ManagementReportEntityFromJson(
        Map<String, dynamic> json) =>
    ManagementReportEntity(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : ManagementReportData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManagementReportEntityToJson(
        ManagementReportEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ManagementReportData _$ManagementReportDataFromJson(
        Map<String, dynamic> json) =>
    ManagementReportData(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => RecordsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => ReportColumns.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManagementReportDataToJson(
        ManagementReportData instance) =>
    <String, dynamic>{
      'records': instance.records,
      'columns': instance.columns,
    };

RecordsData _$RecordsDataFromJson(Map<String, dynamic> json) => RecordsData(
      ID: json['ID'] as int?,
      deal_id: json['deal_id'] as int?,
      owner_id: json['owner_id'] as int?,
      owner_name: json['owner_name'] as String?,
      full_name: json['full_name'] as String?,
      proposal_status: json['proposal_status'] as String?,
      organization_name: json['organization_name'] as String?,
      management_report_url: json['management_report_url'] as String?,
    );

Map<String, dynamic> _$RecordsDataToJson(RecordsData instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'deal_id': instance.deal_id,
      'owner_id': instance.owner_id,
      'owner_name': instance.owner_name,
      'full_name': instance.full_name,
      'proposal_status': instance.proposal_status,
      'organization_name': instance.organization_name,
      'management_report_url': instance.management_report_url,
    };

ReportColumns _$ReportColumnsFromJson(Map<String, dynamic> json) =>
    ReportColumns(
      title: json['title'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$ReportColumnsToJson(ReportColumns instance) =>
    <String, dynamic>{
      'title': instance.title,
      'data': instance.data,
    };
