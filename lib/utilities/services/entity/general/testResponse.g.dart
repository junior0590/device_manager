// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResponse _$TestResponseFromJson(Map<String, dynamic> json) => TestResponse(
      status: json['status'] as int,
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$TestResponseToJson(TestResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
