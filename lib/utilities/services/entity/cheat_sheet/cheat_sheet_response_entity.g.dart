// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheat_sheet_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheatSheetResponseEntity _$CheatSheetResponseEntityFromJson(
        Map<String, dynamic> json) =>
    CheatSheetResponseEntity(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataCheatSheet.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errors: json['errors'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$CheatSheetResponseEntityToJson(
        CheatSheetResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
      'status': instance.status,
    };

DataCheatSheet _$DataCheatSheetFromJson(Map<String, dynamic> json) =>
    DataCheatSheet(
      finance_options: json['finance_options'] as String?,
      pre_incentive_pmt: (json['pre_incentive_pmt'] as num?)?.toDouble(),
      monthly_payment: (json['monthly_payment'] as num?)?.toDouble(),
      penalty_payment: (json['penalty_payment'] as num?)?.toDouble(),
      dealer_fee: (json['dealer_fee'] as num?)?.toDouble(),
      dealer_fee_percentage:
          (json['dealer_fee_percentage'] as num?)?.toDouble(),
      profit_margin: (json['profit_margin'] as num?)?.toDouble(),
      sales_rep_profit_margin:
          (json['sales_rep_profit_margin'] as num?)?.toDouble(),
      select: json['select'] as bool?,
      excessive_commission: json['excessive_commission'] as bool?,
      capped_commission: (json['capped_commission'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataCheatSheetToJson(DataCheatSheet instance) =>
    <String, dynamic>{
      'finance_options': instance.finance_options,
      'pre_incentive_pmt': instance.pre_incentive_pmt,
      'monthly_payment': instance.monthly_payment,
      'penalty_payment': instance.penalty_payment,
      'dealer_fee': instance.dealer_fee,
      'dealer_fee_percentage': instance.dealer_fee_percentage,
      'profit_margin': instance.profit_margin,
      'sales_rep_profit_margin': instance.sales_rep_profit_margin,
      'select': instance.select,
      'excessive_commission': instance.excessive_commission,
      'capped_commission': instance.capped_commission,
    };
