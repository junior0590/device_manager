// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_customer_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractCustomerPhoto _$ContractCustomerPhotoFromJson(
        Map<String, dynamic> json) =>
    ContractCustomerPhoto(
      file: json['file'] as String?,
      fileName: json['fileName'] as String?,
      action: json['action'] as String?,
      contract_id: json['contract_id'] as String?,
      customer_id: json['customer_id'] as String?,
    );

Map<String, dynamic> _$ContractCustomerPhotoToJson(
        ContractCustomerPhoto instance) =>
    <String, dynamic>{
      'file': instance.file,
      'fileName': instance.fileName,
      'action': instance.action,
      'contract_id': instance.contract_id,
      'customer_id': instance.customer_id,
    };
