import 'package:json_annotation/json_annotation.dart';

part 'user_share.g.dart';

@JsonSerializable()
class UserShare {

  String? id;

  @JsonKey(name: "access_type")
  String? accessType;

  UserShare({this.id, this.accessType});

  factory UserShare.fromJson(Map<String, dynamic> json) => _$UserShareFromJson(json);
  Map<String, dynamic> toJson() => _$UserShareToJson(this);

}
