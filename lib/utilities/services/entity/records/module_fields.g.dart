// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleFields _$ModuleFieldsFromJson(Map<String, dynamic> json) => ModuleFields(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FieldsLookup.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ModuleFieldsToJson(ModuleFields instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

FieldsLookup _$FieldsLookupFromJson(Map<String, dynamic> json) => FieldsLookup(
      owner_id: json['owner_id'] as String?,
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      zipcode: json['zipcode'] as String?,
      state: json['state'] as String?,
      rec_id: json['rec_id'] as int?,
    );

Map<String, dynamic> _$FieldsLookupToJson(FieldsLookup instance) =>
    <String, dynamic>{
      'owner_id': instance.owner_id,
      'full_name': instance.full_name,
      'email': instance.email,
      'mobile_phone': instance.mobile_phone,
      'city': instance.city,
      'street': instance.street,
      'zipcode': instance.zipcode,
      'state': instance.state,
      'rec_id': instance.rec_id,
    };
