// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorMessage _$ErrorMessageFromJson(Map<String, dynamic> json) => ErrorMessage(
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ErrorMessageToJson(ErrorMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
      'status': instance.status,
    };

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      field_id: json['field_id'],
      errorList: json['errorList'] as List<dynamic>?,
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'field_id': instance.field_id,
      'errorList': instance.errorList,
    };
