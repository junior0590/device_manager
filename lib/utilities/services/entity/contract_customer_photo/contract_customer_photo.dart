import 'package:json_annotation/json_annotation.dart';

part 'contract_customer_photo.g.dart';

@JsonSerializable()
class ContractCustomerPhoto {

  String? file;

  String? fileName;

  String? action;

  String? contract_id;

  String? customer_id;

  ContractCustomerPhoto({this.file, this.fileName, this.action, this.contract_id, this.customer_id});

  factory ContractCustomerPhoto.fromJson(Map<String, dynamic> json) => _$ContractCustomerPhotoFromJson(json);
  Map<String, dynamic> toJson() => _$ContractCustomerPhotoToJson(this);

}
