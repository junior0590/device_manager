// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      rec_id: json['rec_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      date_of_birth: json['date_of_birth'] as String?,
      home_phone: json['home_phone'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      office_phone: json['office_phone'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      avatar: json['avatar'] as String?,
      full_name: json['full_name'] as String?,
      leads_map_access: json['leads_map_access'] as int?,
      leads_map_create: json['leads_map_create'] as int?,
      leads_map_view_type: json['leads_map_view_type'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'date_of_birth': instance.date_of_birth,
      'home_phone': instance.home_phone,
      'mobile_phone': instance.mobile_phone,
      'office_phone': instance.office_phone,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'avatar': instance.avatar,
      'full_name': instance.full_name,
      'leads_map_access': instance.leads_map_access,
      'leads_map_create': instance.leads_map_create,
      'leads_map_view_type': instance.leads_map_view_type,
    };
