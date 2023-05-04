import 'package:json_annotation/json_annotation.dart';
import 'package:project/utilities/services/entity/record/record.dart';

part 'shareableUsersResponse.g.dart';

@JsonSerializable()
class ShareResponse {

  int status;

  List<Sharee>? data;

  ShareResponse({required this.status, this.data});

  factory ShareResponse.fromJson(Map<String, dynamic> json) => _$ShareResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShareResponseToJson(this);

}

@JsonSerializable()
class ShareResponseGeneral {

  int status;

  Map<String, dynamic>? data;

  ShareResponseGeneral({required this.status, this.data});

  factory ShareResponseGeneral.fromJson(Map<String, dynamic> json) => _$ShareResponseGeneralFromJson(json);
  Map<String, dynamic> toJson() => _$ShareResponseGeneralToJson(this);

}

@JsonSerializable()
class Share {

  int? id;

  @JsonKey(name: "full_name")
  String? fullName;

  @JsonKey(name: "access_type")
  String? accessType;

  Share({this.id, this.fullName, this.accessType});

  factory Share.fromJson(Map<String, dynamic> json) => _$ShareFromJson(json);
  Map<String, dynamic> toJson() => _$ShareToJson(this);

}

