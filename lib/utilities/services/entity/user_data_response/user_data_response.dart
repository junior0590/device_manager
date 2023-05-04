import 'package:json_annotation/json_annotation.dart';

part 'user_data_response.g.dart';

@JsonSerializable()
class UserDataResponse {

  UserData? data;
  int? status;

  UserDataResponse({
    this.data,
    this.status
  });

  factory UserDataResponse.fromJson(Map<String, dynamic> json) => _$UserDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}

@JsonSerializable()
class UserData {
  int? rec_id;

  String? first_name;

  String? last_name;

  String? date_of_birth;

  String? home_phone;

  String? mobile_phone;

  String? office_phone;

  String? street;

  String? city;

  String? state;

  String? zipcode;

  String? avatar;

  String? full_name;

  int? leads_map_access;

  int? leads_map_create;

  String? leads_map_view_type;

  UserData({
    this.rec_id,
    this.first_name,
    this.last_name,
    this.date_of_birth,
    this.home_phone,
    this.mobile_phone,
    this.office_phone,
    this.street,
    this.city,
    this.state,
    this.zipcode,
    this.avatar,
    this.full_name,
    this.leads_map_access,
    this.leads_map_create,
    this.leads_map_view_type
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
