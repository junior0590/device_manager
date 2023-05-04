// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_meetings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedMeetings _$RelatedMeetingsFromJson(Map<String, dynamic> json) =>
    RelatedMeetings(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RelatedMeetingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RelatedMeetingsToJson(RelatedMeetings instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

RelatedMeetingData _$RelatedMeetingDataFromJson(Map<String, dynamic> json) =>
    RelatedMeetingData(
      full_name: json['full_name'] as String?,
      rec_id: json['rec_id'] as int?,
      activity_type: json['activity_type'] as String?,
      subject: json['subject'] as String?,
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      end_time: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      meeting_type: json['meeting_type'] as String?,
      related_record_id: json['related_record_id'] as String?,
      event_color: json['event_color'] as String?,
      meeting_status: json['meeting_status'] as String?,
    );

Map<String, dynamic> _$RelatedMeetingDataToJson(RelatedMeetingData instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'rec_id': instance.rec_id,
      'activity_type': instance.activity_type,
      'subject': instance.subject,
      'start_time': instance.start_time?.toIso8601String(),
      'end_time': instance.end_time?.toIso8601String(),
      'meeting_type': instance.meeting_type,
      'related_record_id': instance.related_record_id,
      'event_color': instance.event_color,
      'meeting_status': instance.meeting_status,
    };
