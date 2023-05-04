// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalendarEntity _$CalendarEntityFromJson(Map<String, dynamic> json) =>
    CalendarEntity(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CalendarFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      meeting_types: (json['meeting_types'] as List<dynamic>?)
          ?.map((e) => MeetingTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CalendarEntityToJson(CalendarEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meeting_types': instance.meeting_types,
      'message': instance.message,
    };

CalendarFields _$CalendarFieldsFromJson(Map<String, dynamic> json) =>
    CalendarFields(
      activity_type: json['activity_type'] as String?,
      host: json['host'] as String?,
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      end_time: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      all_day: json['all_day'] as bool?,
      meeting_type: json['meeting_type'] as String?,
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      rec_id: json['rec_id'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      full_name: json['full_name'] as String?,
      event_color: json['event_color'] as String?,
      owner_id: json['owner_id'] as String?,
      owner_name: json['owner_name'] as String?,
      related_to: json['related_to'] as String?,
      related_record_id: json['related_record_id'] as String?,
      meeting_status: json['meeting_status'] as String?,
    );

Map<String, dynamic> _$CalendarFieldsToJson(CalendarFields instance) =>
    <String, dynamic>{
      'activity_type': instance.activity_type,
      'host': instance.host,
      'start_time': instance.start_time?.toIso8601String(),
      'end_time': instance.end_time?.toIso8601String(),
      'all_day': instance.all_day,
      'meeting_type': instance.meeting_type,
      'subject': instance.subject,
      'description': instance.description,
      'rec_id': instance.rec_id,
      'date': instance.date?.toIso8601String(),
      'full_name': instance.full_name,
      'event_color': instance.event_color,
      'owner_id': instance.owner_id,
      'owner_name': instance.owner_name,
      'related_to': instance.related_to,
      'related_record_id': instance.related_record_id,
      'meeting_status': instance.meeting_status,
    };

MeetingTypes _$MeetingTypesFromJson(Map<String, dynamic> json) => MeetingTypes(
      actual_value: json['actual_value'] as int?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$MeetingTypesToJson(MeetingTypes instance) =>
    <String, dynamic>{
      'actual_value': instance.actual_value,
      'display_value': instance.display_value,
    };
