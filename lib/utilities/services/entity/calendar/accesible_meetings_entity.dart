
import 'package:json_annotation/json_annotation.dart';

part 'accesible_meetings_entity.g.dart';

@JsonSerializable()
class AccesibleMeetingsEntity {

  int? status;
  List<AccesibleMeetingsFields>? data;

  AccesibleMeetingsEntity({this.status, this.data});

  factory AccesibleMeetingsEntity.fromJson(Map<String, dynamic> json) => _$AccesibleMeetingsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AccesibleMeetingsEntityToJson(this);

}

@JsonSerializable()
class AccesibleMeetingsFields {

  String? full_name;
  String? email;
  String? organization_name;
  String? avatar;
  int? rec_id;
  String? short_name;
  bool? seleted = false;


  AccesibleMeetingsFields({this.full_name, this.email, this.organization_name, this.avatar, this.rec_id, this.short_name, this.seleted});

  factory AccesibleMeetingsFields.fromJson(Map<String, dynamic> json) => _$AccesibleMeetingsFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$AccesibleMeetingsFieldsToJson(this);

}
