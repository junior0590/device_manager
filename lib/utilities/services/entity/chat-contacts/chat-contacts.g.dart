// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat-contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatContactsResponse _$ChatContactsResponseFromJson(
        Map<String, dynamic> json) =>
    ChatContactsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChatContact.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ChatContactsResponseToJson(
        ChatContactsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ChatContact _$ChatContactFromJson(Map<String, dynamic> json) => ChatContact(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$ChatContactToJson(ChatContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'selected': instance.selected,
    };
