import 'package:json_annotation/json_annotation.dart';
part 'viewable_users_entity.g.dart';

@JsonSerializable()
class ViewableUsersEntity {
  int? status;
  List<ViewableUsersData>? data;

  ViewableUsersEntity({this.status, this.data});

  factory ViewableUsersEntity.fromJson(Map<String, dynamic> json) =>
      _$ViewableUsersEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ViewableUsersEntityToJson(this);
}

@JsonSerializable()
class ViewableUsersData {
  String? full_name;
  String? email;
  String? organization_name;
  String? avatar;
  int? rec_id;
  String? short_name;

  ViewableUsersData(
      {this.full_name,
      this.email,
      this.organization_name,
      this.avatar,
      this.rec_id,
      this.short_name});

  factory ViewableUsersData.fromJson(Map<String, dynamic> json) =>
      _$ViewableUsersDataFromJson(json);
  Map<String, dynamic> toJson() => _$ViewableUsersDataToJson(this);
}
