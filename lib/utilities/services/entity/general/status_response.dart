import 'package:json_annotation/json_annotation.dart';

part 'status_response.g.dart';

@JsonSerializable()
class StatusResponse {

  int? status;

  MessageData? data;

  StatusResponse({this.status, this.data});

  factory StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);
  Map<String, dynamic> toJson() => _$StatusResponseToJson(this);

}

@JsonSerializable()
class MessageData {

  @JsonKey(name: "user_read")
  int? userRead;

  int? direction;

  bool? read;

  int? from;

  int? to;

  String? message;

  String? sent;

  String? type;

  int? id;

  MessageData({this.userRead, this.direction, this.read, this.from, this.to, this.message, this.sent, this.type, this.id});

  factory MessageData.fromJson(Map<String, dynamic> json) => _$MessageDataFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDataToJson(this);

}