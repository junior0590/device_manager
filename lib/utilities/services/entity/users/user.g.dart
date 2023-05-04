// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String?,
      password: json['password'] as String?,
      deviceName: json['device_name'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'device_name': instance.deviceName,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      data: UserInfo.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      token: json['token'] as String?,
      id: json['id'] as int?,
      name: json['user_name'] as String?,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'user_name': instance.name,
    };

ResponseSingleStatus _$ResponseSingleStatusFromJson(
        Map<String, dynamic> json) =>
    ResponseSingleStatus(
      data: json['data'] == null
          ? null
          : DataSingleStatus.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseSingleStatusToJson(
        ResponseSingleStatus instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DataSingleStatus _$DataSingleStatusFromJson(Map<String, dynamic> json) =>
    DataSingleStatus(
      status: json['status'] as int?,
    );

Map<String, dynamic> _$DataSingleStatusToJson(DataSingleStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
    };
