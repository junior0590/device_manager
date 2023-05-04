// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_validation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareValidationResponse _$ShareValidationResponseFromJson(
        Map<String, dynamic> json) =>
    ShareValidationResponse(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : Validation.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShareValidationResponseToJson(
        ShareValidationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Validation _$ValidationFromJson(Map<String, dynamic> json) => Validation(
      shared: json['shared'] as bool?,
    );

Map<String, dynamic> _$ValidationToJson(Validation instance) =>
    <String, dynamic>{
      'shared': instance.shared,
    };
