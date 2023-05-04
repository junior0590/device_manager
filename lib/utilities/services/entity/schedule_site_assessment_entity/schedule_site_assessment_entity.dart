import 'package:json_annotation/json_annotation.dart';

part 'schedule_site_assessment_entity.g.dart';

@JsonSerializable()
class ScheduleSiteAssessmentEntity {

  AssessmentData? data;

  int? status;

  ScheduleSiteAssessmentEntity({required this.status, this.data});

  factory ScheduleSiteAssessmentEntity.fromJson(Map<String, dynamic> json) => _$ScheduleSiteAssessmentEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleSiteAssessmentEntityToJson(this);

}

@JsonSerializable()
class AssessmentData {

  String? url;

  AssessmentData({this.url});

  factory AssessmentData.fromJson(Map<String, dynamic> json) => _$AssessmentDataFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentDataToJson(this);

}
