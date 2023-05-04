import 'package:json_annotation/json_annotation.dart';

part 'verify_user_level_response.g.dart';

@JsonSerializable()
class VerifyUserLevelResponse {

  int? isMaster;

  int? isAdmin;

  int? isUser;

  Permissions? permissions;

  int? status;

  VerifyUserLevelResponse({ this.isMaster, this.isAdmin, this.isUser, this.permissions, this.status });

  factory VerifyUserLevelResponse.fromJson(Map<String, dynamic> json) => _$VerifyUserLevelResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyUserLevelResponseToJson(this);

}

@JsonSerializable()
class Permissions {

  int? create_proposals;

  int? delete_proposals;

  int? leads_map_access;

  int? leads_map_create;

  String? leads_map_view_type;

  Permissions({ this.create_proposals, this.delete_proposals, this.leads_map_access, this.leads_map_create, this.leads_map_view_type });

  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);

}