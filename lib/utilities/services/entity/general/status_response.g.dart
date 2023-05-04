// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    StatusResponse(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : MessageData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusResponseToJson(StatusResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

MessageData _$MessageDataFromJson(Map<String, dynamic> json) => MessageData(
      userRead: json['user_read'] as int?,
      direction: json['direction'] as int?,
      read: json['read'] as bool?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      message: json['message'] as String?,
      sent: json['sent'] as String?,
      type: json['type'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'user_read': instance.userRead,
      'direction': instance.direction,
      'read': instance.read,
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'sent': instance.sent,
      'type': instance.type,
      'id': instance.id,
    };
