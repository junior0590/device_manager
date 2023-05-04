import 'package:json_annotation/json_annotation.dart';

part 'send_message.g.dart';

@JsonSerializable()
class MessageToSend {

  String? content;
  String? type;
  String? recordId;
  String? recordModule;

  MessageToSend({ this.content, this.type, this.recordId, this.recordModule });

  factory MessageToSend.fromJson(Map<String, dynamic> json) => _$MessageToSendFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToSendToJson(this);

}