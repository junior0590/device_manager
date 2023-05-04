
import 'package:json_annotation/json_annotation.dart';

part 'calendar_entity.g.dart';

@JsonSerializable()
class CalendarEntity {

  int? status;
  List<CalendarFields>? data;
  List<MeetingTypes>? meeting_types;
  String? message;

  CalendarEntity({this.status, this.data, this.meeting_types, this.message});

  factory CalendarEntity.fromJson(Map<String, dynamic> json) => _$CalendarEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarEntityToJson(this);

}

@JsonSerializable()
class CalendarFields {

  String? activity_type;
  String? host;
  DateTime? start_time;
  DateTime? end_time;
  bool? all_day;
  String? meeting_type;
  String? subject;
  String? description;
  int? rec_id;
  DateTime? date;
  String? full_name;
  String? event_color;
  String? owner_id;
  String? owner_name;
  String? related_to;
  String? related_record_id;
  String? meeting_status;

  CalendarFields({this.activity_type, this.host, this.start_time, this.end_time, this.all_day, this.meeting_type, this.subject,
    this.description, this.rec_id, this.date, this.full_name, this.event_color, this.owner_id, this.owner_name, this.related_to,
    this.related_record_id, this.meeting_status});

  factory CalendarFields.fromJson(Map<String, dynamic> json) => _$CalendarFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarFieldsToJson(this);

}

@JsonSerializable()
class MeetingTypes {

  int? actual_value;
  String? display_value;

  MeetingTypes({this.actual_value, this.display_value});

  factory MeetingTypes.fromJson(Map<String, dynamic> json) => _$MeetingTypesFromJson(json);
  Map<String, dynamic> toJson() => _$MeetingTypesToJson(this);

}
