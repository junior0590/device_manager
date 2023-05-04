// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_lead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConvertLeadResponse _$ConvertLeadResponseFromJson(Map<String, dynamic> json) =>
    ConvertLeadResponse(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : DataConvert.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConvertLeadResponseToJson(
        ConvertLeadResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DataConvert _$DataConvertFromJson(Map<String, dynamic> json) => DataConvert(
      dealId: json['deal_id'] as String?,
    );

Map<String, dynamic> _$DataConvertToJson(DataConvert instance) =>
    <String, dynamic>{
      'deal_id': instance.dealId,
    };
