// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageToSend _$MessageToSendFromJson(Map<String, dynamic> json) =>
    MessageToSend(
      content: json['content'] as String?,
      type: json['type'] as String?,
      recordId: json['recordId'] as String?,
      recordModule: json['recordModule'] as String?,
    );

Map<String, dynamic> _$MessageToSendToJson(MessageToSend instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
      'recordId': instance.recordId,
      'recordModule': instance.recordModule,
    };
