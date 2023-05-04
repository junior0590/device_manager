import 'package:json_annotation/json_annotation.dart';

part 'dashboard_home_entity.g.dart';

@JsonSerializable()
class DashboardHomeEntity {

  ReportData? data;

  int? status;

  DashboardHomeEntity({required this.status, this.data});

  factory DashboardHomeEntity.fromJson(Map<String, dynamic> json) => _$DashboardHomeEntityFromJson(json);
  Map<String, dynamic> toJson() => _$DashboardHomeEntityToJson(this);

}

@JsonSerializable()
class ReportData {

  ProfileDashboard? profile;

  List<ViewableModules>? viewable_modules;

  int? proposal_total;

  int? contract_total;

  ReportData({ this.profile, this.viewable_modules, this.proposal_total, this.contract_total});

  factory ReportData.fromJson(Map<String, dynamic> json) => _$ReportDataFromJson(json);
  Map<String, dynamic> toJson() => _$ReportDataToJson(this);

}

@JsonSerializable()
class ProfileDashboard {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "first_name")
  String? first_name;

  @JsonKey(name: "last_name")
  String? last_name;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "gender")
  String? gender;

  @JsonKey(name: "home_phone")
  String? home_phone;

  @JsonKey(name: "mobile_phone")
  String? mobile_phone;

  @JsonKey(name: "personal_email")
  String? personal_email;

  @JsonKey(name: "street")
  String? street;

  @JsonKey(name: "city")
  String? city;

  @JsonKey(name: "state")
  String? state;

  @JsonKey(name: "zipcode")
  int? zipcode;

  @JsonKey(name: "avatar")
  String? avatar;

  ProfileDashboard({ this.rec_id, this.first_name, this.last_name, this.full_name, this.gender, this.home_phone, this.mobile_phone,
    this.personal_email, this.street, this.city, this.state, this.zipcode, this.avatar });

  factory ProfileDashboard.fromJson(Map<String, dynamic> json) => _$ProfileDashboardFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDashboardToJson(this);

}

@JsonSerializable()
class ViewableModules {

  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "slug")
  String? slug;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "status")
  String? status;

  @JsonKey(name: "module_total")
  int? module_total;

  ViewableModules({ this.rec_id, this.slug, this.name, this.label, this.status, this.module_total});

  factory ViewableModules.fromJson(Map<String, dynamic> json) => _$ViewableModulesFromJson(json);
  Map<String, dynamic> toJson() => _$ViewableModulesToJson(this);

}
