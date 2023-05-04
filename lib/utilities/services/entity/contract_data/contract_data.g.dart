// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractData _$ContractDataFromJson(Map<String, dynamic> json) => ContractData(
      status: json['status'] as int?,
      customerData: (json['customerData'] as List<dynamic>?)
          ?.map((e) => CustomerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContractDataToJson(ContractData instance) =>
    <String, dynamic>{
      'customerData': instance.customerData,
      'status': instance.status,
    };

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
      customer_name: json['customer_name'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      customer_email: json['customer_email'] as String?,
      customer_address: json['customer_address'] as String?,
      customer_mobile: json['customer_mobile'] as String?,
      customer_id_photo: json['customer_id_photo'] as int?,
      photo_id_url: json['photo_id_url'] as String?,
      has_completed: json['has_completed'] as String?,
      signer_id: json['signer_id'] as String?,
      pandadoc_id: json['pandadoc_id'] as String?,
    )..showImage = json['showImage'] as bool?;

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
    <String, dynamic>{
      'customer_name': instance.customer_name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'customer_email': instance.customer_email,
      'customer_address': instance.customer_address,
      'customer_mobile': instance.customer_mobile,
      'customer_id_photo': instance.customer_id_photo,
      'photo_id_url': instance.photo_id_url,
      'has_completed': instance.has_completed,
      'signer_id': instance.signer_id,
      'pandadoc_id': instance.pandadoc_id,
      'showImage': instance.showImage,
    };
