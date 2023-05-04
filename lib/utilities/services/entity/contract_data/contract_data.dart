import 'package:json_annotation/json_annotation.dart';

part 'contract_data.g.dart';

@JsonSerializable()
class ContractData {
  List<CustomerData>? customerData;

  int? status;

  ContractData({
    this.status,
    this.customerData,
  });

  factory ContractData.fromJson(Map<String, dynamic> json) => _$ContractDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContractDataToJson(this);
}

@JsonSerializable()
class CustomerData {
  String? customer_name;

  String? first_name;

  String? last_name;

  String? customer_email;

  String? customer_address;

  String? customer_mobile;

  int? customer_id_photo;

  String? photo_id_url;

  String? has_completed;

  String? signer_id;

  String? pandadoc_id;

  bool? showImage;

  CustomerData({
    this.customer_name,
    this.first_name,
    this.last_name,
    this.customer_email,
    this.customer_address,
    this.customer_mobile,
    this.customer_id_photo,
    this.photo_id_url,
    this.has_completed,
    this.signer_id,
    this.pandadoc_id,
  });

  factory CustomerData.fromJson(Map<String, dynamic> json) => _$CustomerDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataToJson(this);
}
