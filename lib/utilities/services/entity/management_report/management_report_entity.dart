import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';

part 'management_report_entity.g.dart';

@JsonSerializable()
class ManagementReportEntity {
  ManagementReportData? data;

  int status;

  ManagementReportEntity({required this.status, this.data});

  factory ManagementReportEntity.fromJson(Map<String, dynamic> json) =>
      _$ManagementReportEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ManagementReportEntityToJson(this);
}

@JsonSerializable()
class ManagementReportData {
  List<RecordsData>? records;

  List<ReportColumns>? columns;

  ManagementReportData({this.records, this.columns});

  factory ManagementReportData.fromJson(Map<String, dynamic> json) =>
      _$ManagementReportDataFromJson(json);
  Map<String, dynamic> toJson() => _$ManagementReportDataToJson(this);
}

@JsonSerializable()
class RecordsData {
  @JsonKey(name: "ID")
  int? ID;

  @JsonKey(name: "deal_id")
  int? deal_id;

  @JsonKey(name: "owner_id")
  int? owner_id;

  @JsonKey(name: "owner_name")
  String? owner_name;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "proposal_status")
  String? proposal_status;

  @JsonKey(name: "organization_name")
  String? organization_name;

  @JsonKey(name: "management_report_url")
  String? management_report_url;

  RecordsData(
      {this.ID,
      this.deal_id,
      this.owner_id,
      this.owner_name,
      this.full_name,
      this.proposal_status,
      this.organization_name,
      this.management_report_url});

  factory RecordsData.fromJson(Map<String, dynamic> json) =>
      _$RecordsDataFromJson(json);
  Map<String, dynamic> toJson() => _$RecordsDataToJson(this);
}

@JsonSerializable()
class ReportColumns {
  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "data")
  String? data;

  ReportColumns({this.title, this.data});

  factory ReportColumns.fromJson(Map<String, dynamic> json) =>
      _$ReportColumnsFromJson(json);
  Map<String, dynamic> toJson() => _$ReportColumnsToJson(this);
}
