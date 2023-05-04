// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Records _$RecordsFromJson(Map<String, dynamic> json) => Records(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      tableConfigs: json['tableConfigs'] == null
          ? null
          : TableConfig.fromJson(json['tableConfigs'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaRecords.fromJson(json['meta'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
      'tableConfigs': instance.tableConfigs,
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
    };

TableConfig _$TableConfigFromJson(Map<String, dynamic> json) => TableConfig(
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => ColumnObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      filters: (json['filters'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableConfigToJson(TableConfig instance) =>
    <String, dynamic>{
      'columns': instance.columns,
      'filters': instance.filters,
    };

ColumnObject _$ColumnObjectFromJson(Map<String, dynamic> json) => ColumnObject(
      label: json['label'] as String?,
      field: json['field'] as String?,
      filter_field_type: json['filter_field_type'] as String?,
      visible: json['visible'] as bool?,
      order: json['order'] as int?,
      type: json['type'] as String?,
      filteringOperators: (json['filteringOperators'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      valueList: (json['valueList'] as List<dynamic>?)
          ?.map((e) => ValueListRecords.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ColumnObjectToJson(ColumnObject instance) =>
    <String, dynamic>{
      'label': instance.label,
      'field': instance.field,
      'filter_field_type': instance.filter_field_type,
      'visible': instance.visible,
      'order': instance.order,
      'type': instance.type,
      'filteringOperators': instance.filteringOperators,
      'valueList': instance.valueList,
    };

ValueListRecords _$ValueListRecordsFromJson(Map<String, dynamic> json) =>
    ValueListRecords(
      actualValue: json['actual_value'] as String?,
      displayValue: json['display_value'] as String?,
      color: json['color'] as String?,
      check: json['check'] as bool?,
    );

Map<String, dynamic> _$ValueListRecordsToJson(ValueListRecords instance) =>
    <String, dynamic>{
      'actual_value': instance.actualValue,
      'display_value': instance.displayValue,
      'color': instance.color,
      'check': instance.check,
    };

Filter _$FilterFromJson(Map<String, dynamic> json) => Filter(
      field: json['field'] as String?,
      uses_criteria: json['uses_criteria'] as bool?,
      operator: json['operator'] as String?,
      criteria: json['criteria'] as String?,
      filter_field_type: json['filter_field_type'] as String?,
    );

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'field': instance.field,
      'operator': instance.operator,
      'criteria': instance.criteria,
      'filter_field_type': instance.filter_field_type,
      'uses_criteria': instance.uses_criteria,
    };

MetaRecords _$MetaRecordsFromJson(Map<String, dynamic> json) => MetaRecords(
      view: json['view'] as bool?,
      create: json['create'] as bool?,
      edit: json['edit'] as bool?,
      delete: json['delete'] as bool?,
      export_data: json['export_data'] as bool?,
      filter_data: json['filter_data'] as bool?,
      manage_columns: json['manage_columns'] as bool?,
      share_record: json['share_record'] as bool?,
    );

Map<String, dynamic> _$MetaRecordsToJson(MetaRecords instance) =>
    <String, dynamic>{
      'view': instance.view,
      'create': instance.create,
      'edit': instance.edit,
      'delete': instance.delete,
      'export_data': instance.export_data,
      'filter_data': instance.filter_data,
      'manage_columns': instance.manage_columns,
      'share_record': instance.share_record,
    };
