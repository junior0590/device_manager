// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_to_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractResponse _$ContractResponseFromJson(Map<String, dynamic> json) =>
    ContractResponse(
      contract_id: json['contract_id'] as int?,
    )
      ..errorMessage = json['errorMessage'] as String?
      ..statusCode = json['statusCode'] as int?;

Map<String, dynamic> _$ContractResponseToJson(ContractResponse instance) =>
    <String, dynamic>{
      'contract_id': instance.contract_id,
      'errorMessage': instance.errorMessage,
      'statusCode': instance.statusCode,
    };
