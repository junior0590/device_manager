// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_site_assessment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleSiteAssessmentEntity _$ScheduleSiteAssessmentEntityFromJson(
        Map<String, dynamic> json) =>
    ScheduleSiteAssessmentEntity(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : AssessmentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleSiteAssessmentEntityToJson(
        ScheduleSiteAssessmentEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

AssessmentData _$AssessmentDataFromJson(Map<String, dynamic> json) =>
    AssessmentData(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AssessmentDataToJson(AssessmentData instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
