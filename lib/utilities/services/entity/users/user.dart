import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {

  String? email;

  String? password;

  @JsonKey(name: "device_name")
  String? deviceName;

  User({this.email, this.password, this.deviceName});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}

@JsonSerializable()
class ResponseData {

  int? status;

  UserInfo data;

  ResponseData({required this.data, this.status});

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}

@JsonSerializable()
class UserInfo {

  String? token;

  int? id;

  @JsonKey(name: "user_name")
  String? name;

  UserInfo({ this.token, this.id, this.name });

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

}

@JsonSerializable()
class ResponseSingleStatus {

  DataSingleStatus? data;

  ResponseSingleStatus({this.data});

  factory ResponseSingleStatus.fromJson(Map<String, dynamic> json) => _$ResponseSingleStatusFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseSingleStatusToJson(this);

}

@JsonSerializable()
class DataSingleStatus {

  int? status;

  DataSingleStatus({this.status});

  factory DataSingleStatus.fromJson(Map<String, dynamic> json) => _$DataSingleStatusFromJson(json);
  Map<String, dynamic> toJson() => _$DataSingleStatusToJson(this);

}



