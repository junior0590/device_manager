import 'package:json_annotation/json_annotation.dart';


part 'cheat_sheet_response_entity.g.dart';

@JsonSerializable()
class CheatSheetResponseEntity {

  @JsonKey(name: "data")
  List<DataCheatSheet>? data;

  String? message;

  String? errors;

  int? status;

  CheatSheetResponseEntity({this.data, this.message, this.errors, this.status});

  factory CheatSheetResponseEntity.fromJson(Map<String, dynamic> json) => _$CheatSheetResponseEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CheatSheetResponseEntityToJson(this);

}

@JsonSerializable()
class DataCheatSheet {

  String? finance_options;

  double? pre_incentive_pmt;

  double? monthly_payment;

  double? penalty_payment;

  double? dealer_fee;

  double? dealer_fee_percentage;

  double? profit_margin;

  double? sales_rep_profit_margin;

  bool? select;

  bool? excessive_commission;

  double? capped_commission;

  DataCheatSheet({this.finance_options, this.pre_incentive_pmt, this.monthly_payment, this.penalty_payment, this.dealer_fee,
    this.dealer_fee_percentage, this.profit_margin, this.sales_rep_profit_margin, this.select, this.excessive_commission, this.capped_commission });

  factory DataCheatSheet.fromJson(Map<String, dynamic> json) => _$DataCheatSheetFromJson(json);
  Map<String, dynamic> toJson() => _$DataCheatSheetToJson(this);

}

