import 'package:json_annotation/json_annotation.dart';

part 'avatar_change_response.g.dart';

@JsonSerializable()
class AvatarChangeResponse {

  String? url;

  int? status;

  AvatarChangeResponse({ this.url, this.status });

  factory AvatarChangeResponse.fromJson(Map<String, dynamic> json) => _$AvatarChangeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AvatarChangeResponseToJson(this);

}
