import 'package:json_annotation/json_annotation.dart';

part 'related_meetings.g.dart';

@JsonSerializable()
class RelatedMeetings {
  List<RelatedMeetingData>? data;

  int status;

  RelatedMeetings({required this.status, this.data,});

  factory RelatedMeetings.fromJson(Map<String, dynamic> json) => _$RelatedMeetingsFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedMeetingsToJson(this);
}

@JsonSerializable()
class RelatedMeetingData {
  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "activity_type")
  String? activity_type;

  @JsonKey(name: "subject")
  String? subject;

  @JsonKey(name: "start_time")
  DateTime? start_time;

  @JsonKey(name: "end_time")
  DateTime? end_time;

  @JsonKey(name: "meeting_type")
  String? meeting_type;

  @JsonKey(name: "related_record_id")
  String? related_record_id;

  @JsonKey(name: "event_color")
  String? event_color;

  @JsonKey(name: "meeting_status")
  String? meeting_status;

  RelatedMeetingData({this.full_name, this.rec_id, this.activity_type, this.subject, this.start_time, this.end_time,
  this.meeting_type, this.related_record_id, this.event_color, this.meeting_status});

  factory RelatedMeetingData.fromJson(Map<String, dynamic> json) => _$RelatedMeetingDataFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedMeetingDataToJson(this);
}

