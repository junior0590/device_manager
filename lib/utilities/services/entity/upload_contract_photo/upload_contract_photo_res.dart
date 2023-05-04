import 'package:json_annotation/json_annotation.dart';

part 'upload_contract_photo_res.g.dart';

@JsonSerializable()
class UploadContractPhotoResponse {

  bool? show_contract;

  String? pandadoc_id;

  UploadContractPhotoResponse({ this.show_contract, this.pandadoc_id });

  factory UploadContractPhotoResponse.fromJson(Map<String, dynamic> json) => _$UploadContractPhotoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UploadContractPhotoResponseToJson(this);

}