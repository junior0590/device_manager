import 'package:json_annotation/json_annotation.dart';


part 'cheat_sheet_entity.g.dart';

@JsonSerializable()
class CheatSheetEntity {

  int? rec_id;

  String? first_name;

  String? last_name;

  String? first_name_2;

  String? last_name_2;

  String? customer_2_email;

  String? customer_2_mobile;

  String? home_phone;

  String? mobile_phone;

  String? email;

  String? street;

  String? city;

  String? state;

  String? zipcode;

  String? country;

  String? solar_panels;

  String? battery_system;

  String? system_avg_tsrf;

  String? production_value;

  String? total_solar_arrays;

  String? steep_pitch_roof;

  String? flat_roof;

  String? metal_roof;

  String? ground_mt_rooftop;

  String? wire_run_after_40ft;

  String? roof_over_25ft;

  String? trenching_per_ft;

  String? internal_conduit_run;

  String? tree_removal_cost;

  String? additional_costs;

  String? permit_fee;

  String? m_to_interconnect;

  String? panel_count;

  String? annual_usage;

  String? solar_layout_file_image;

  String? designer;

  String? system_offset;

  double? system_size;

  String? utility_company;

  String? price_per_watt;

  String? ppw_contract_price;

  String? deal_id;

  String? production;

  String? consumption;

  String? ppw_price_option;

  String? amount_of_panels;

  String? include_roofing_work;

  String? include_electrical_work;

  String? internal_wire_run;

  String? include_tax_credit_override;

  String? design_id;

  String? spr_roof_price;

  String? price_override;

  List<String>? electrical_work_1;

  List<String>? electrical_upgrades;

  String? other_work_price;

  String? grand_total;

  String? notes;

  String? additional_project_total_price_override;

  String? add_a_bridge_loan;

  String? down_payment;

  String? tax_federal;

  String? tax_state;

  String? nyserda_override;

  String? inverter_type;

  List<String>? choose_financing;

  double? sales_rep_commission;

  double? min_commission_rate;

  double? max_commission_rate;

  String? project_purchase_type;

  String? lead_source;

  String? safety_railings;

  String? onyx_black_roofing;

  String? selected_roofing_color;

  String? sheathing;

  String? gutters_and_leaders;

  String? skylights;

  int? selected_sheathing = 0;

  int? selected_gutters_and_leaders = 0;

  int? selected_skylights = 0;

  String? tesla_roof_installation_difficulty;

  String? tesla_roof_installation_location;

  String? tesla_roof_square;

  String? tesla_roof_kw;

  String? bridge_loan_override;

  @JsonKey(name: "designData")
  List<Map<String, dynamic>>? design_data_history;

  CheatSheetEntity({this.rec_id, this.first_name, this.last_name, this.first_name_2, this.customer_2_mobile, this.customer_2_email, this.last_name_2, this.home_phone, this.mobile_phone, this.email, this.street,
    this.city, this.state, this.zipcode, this.country, this.solar_panels, this.battery_system, this.system_avg_tsrf, this.production_value, this.total_solar_arrays, this.steep_pitch_roof,
    this.flat_roof, this.metal_roof, this.ground_mt_rooftop, this.wire_run_after_40ft, this.roof_over_25ft, this.trenching_per_ft, this.internal_conduit_run,
    this.tree_removal_cost, this.additional_costs, this.permit_fee, this.m_to_interconnect, this.panel_count, this.annual_usage, this.solar_layout_file_image, this.designer,
    this.system_offset, this.system_size, this.utility_company, this.price_per_watt, this.ppw_contract_price, this.deal_id, this.production, this.consumption, this.ppw_price_option,
   this.amount_of_panels, this.include_roofing_work, this.include_electrical_work, this.internal_wire_run, this.include_tax_credit_override, this.design_id, this.choose_financing,
  this.spr_roof_price, this.price_override, this.electrical_work_1, this.electrical_upgrades, this.other_work_price, this.grand_total, this.notes, this.additional_project_total_price_override,
    this.add_a_bridge_loan, this.down_payment, this.tax_federal, this.tax_state, this.nyserda_override, this.inverter_type, this.design_data_history, this.sales_rep_commission, this.min_commission_rate, this.max_commission_rate,
  this.project_purchase_type, this.lead_source, this.safety_railings, this.onyx_black_roofing, this.selected_roofing_color, this.skylights, this.gutters_and_leaders, this.sheathing,
  this.selected_sheathing, this.selected_gutters_and_leaders, this.selected_skylights, this.tesla_roof_installation_difficulty, this.tesla_roof_installation_location, this.tesla_roof_kw, this.tesla_roof_square, this.bridge_loan_override});

  factory CheatSheetEntity.fromJson(Map<String, dynamic> json) => _$CheatSheetEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CheatSheetEntityToJson(this);

}




