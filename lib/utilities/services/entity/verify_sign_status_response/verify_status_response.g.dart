// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyStatusResponse _$VerifyStatusResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyStatusResponse(
      status: json['status'] as int?,
      signer_id: json['signer_id'] as String?,
    )..status_listener = json['status_listener'] as bool?;

Map<String, dynamic> _$VerifyStatusResponseToJson(
        VerifyStatusResponse instance) =>
    <String, dynamic>{
      'status_listener': instance.status_listener,
      'status': instance.status,
      'signer_id': instance.signer_id,
    };
