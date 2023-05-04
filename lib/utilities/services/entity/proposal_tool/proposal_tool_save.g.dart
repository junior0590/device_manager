// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_tool_save.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalToolSave _$ProposalToolSaveFromJson(Map<String, dynamic> json) =>
    ProposalToolSave(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => ProposalToolSignature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProposalToolSaveToJson(ProposalToolSave instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
