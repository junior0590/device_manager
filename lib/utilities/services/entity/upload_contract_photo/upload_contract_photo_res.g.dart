// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_contract_photo_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadContractPhotoResponse _$UploadContractPhotoResponseFromJson(
        Map<String, dynamic> json) =>
    UploadContractPhotoResponse(
      show_contract: json['show_contract'] as bool?,
      pandadoc_id: json['pandadoc_id'] as String?,
    );

Map<String, dynamic> _$UploadContractPhotoResponseToJson(
        UploadContractPhotoResponse instance) =>
    <String, dynamic>{
      'show_contract': instance.show_contract,
      'pandadoc_id': instance.pandadoc_id,
    };
