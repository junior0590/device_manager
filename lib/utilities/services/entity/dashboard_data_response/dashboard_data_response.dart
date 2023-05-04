import 'package:json_annotation/json_annotation.dart';

part 'dashboard_data_response.g.dart';

@JsonSerializable()
class DashboardData {

  SavedFilters? saved_filter;
  List<RecordsByStage>? recordsByStage = [];
  List<RecordsBySource>? recordsBySource = [];
  List<RecordsByOwner>? recordsByOwner = [];

  DashboardData({this.saved_filter, this.recordsByStage, this.recordsBySource, this.recordsByOwner});

  factory DashboardData.fromJson(Map<String, dynamic> json) => _$DashboardDataFromJson(json);
  Map<String, dynamic> toJson() => _$DashboardDataToJson(this);

}

@JsonSerializable()
class SavedFilters {

  String? selected_module;
  String? selected_module_label;
  int? selected_module_id;
  String? selected_user_id;

  SavedFilters({this.selected_module, this.selected_module_label, this.selected_module_id, this.selected_user_id});

  factory SavedFilters.fromJson(Map<String, dynamic> json) => _$SavedFiltersFromJson(json);
  Map<String, dynamic> toJson() => _$SavedFiltersToJson(this);

}

@JsonSerializable()
class RecordsByStage {

  String? stage;
  int? total;
  String? percentage;
  String? url;

  RecordsByStage({this.stage, this.total, this.percentage});

  factory RecordsByStage.fromJson(Map<String, dynamic> json) => _$RecordsByStageFromJson(json);
  Map<String, dynamic> toJson() => _$RecordsByStageToJson(this);

}

@JsonSerializable()
class RecordsBySource {

  String? label;
  int? value;
  String? percentage;

  RecordsBySource({ this.label, this.value, this.percentage });

  factory RecordsBySource.fromJson(Map<String, dynamic> json) => _$RecordsBySourceFromJson(json);
  Map<String, dynamic> toJson() => _$RecordsBySourceToJson(this);

}

@JsonSerializable()
class RecordsByOwner {

  String? id;
  String? owner;
  int? total;
  String? percentage;
  String? url;

  RecordsByOwner({ this.id, this.owner, this.total, this.percentage, this.url });

  factory RecordsByOwner.fromJson(Map<String, dynamic> json) => _$RecordsByOwnerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordsByOwnerToJson(this);

}

@JsonSerializable()
class ReportsModules {

  List<ModuleDashboard>? data;

  ModuleDashboard? saved;

  ReportsModules({ this.data, this.saved });

  factory ReportsModules.fromJson(Map<String, dynamic> json) => _$ReportsModulesFromJson(json);
  Map<String, dynamic> toJson() => _$ReportsModulesToJson(this);

}

@JsonSerializable()
class ModuleDashboard {

  String? label;
  String? label_singular;
  String? slug;
  int? id;

  ModuleDashboard({ this.label, this.label_singular, this.slug, this.id });

  factory ModuleDashboard.fromJson(Map<String, dynamic> json) => _$ModuleDashboardFromJson(json);
  Map<String, dynamic> toJson() => _$ModuleDashboardToJson(this);

}

@JsonSerializable()
class ReportsUsers {

  List<UserDashboard>? data;

  ReportsUsers({ this.data });

  factory ReportsUsers.fromJson(Map<String, dynamic> json) => _$ReportsUsersFromJson(json);
  Map<String, dynamic> toJson() => _$ReportsUsersToJson(this);

}

@JsonSerializable()
class UserDashboard {

  String? rec_id;
  String? full_name;

  UserDashboard({ this.rec_id, this.full_name });

  factory UserDashboard.fromJson(Map<String, dynamic> json) => _$UserDashboardFromJson(json);
  Map<String, dynamic> toJson() => _$UserDashboardToJson(this);

}

