// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visible_columns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisibleColumns _$VisibleColumnsFromJson(Map<String, dynamic> json) =>
    VisibleColumns(
      columnName: json['column_name'] as String?,
      visible: json['visible'] as int?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$VisibleColumnsToJson(VisibleColumns instance) =>
    <String, dynamic>{
      'column_name': instance.columnName,
      'visible': instance.visible,
      'order': instance.order,
    };
