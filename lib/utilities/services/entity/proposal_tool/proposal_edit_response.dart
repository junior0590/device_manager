import 'package:json_annotation/json_annotation.dart';

part 'proposal_edit_response.g.dart';

@JsonSerializable()
class ProposalEditResponse {

  ProposalContent? proposalContent;

  @JsonKey(name: "USAStates")
  List<USAStatesEdit>? usaStates;

  PtPickListsEdit? ptPicklists;

  DesignDataEdit? design_details;

  List<ElectricalUpgradesEdit>? electrical_upgrades;

  ProfitMargin? profitMargin;

  int? status;

  ProposalEditResponse({ this.proposalContent,this.status, this.usaStates, this.design_details, this.electrical_upgrades, this.ptPicklists});

  factory ProposalEditResponse.fromJson(Map<String, dynamic> json) => _$ProposalEditResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalEditResponseToJson(this);

}

@JsonSerializable()
class ProposalContent {

  @JsonKey(name: "rec_id")
  String? recId;

  @JsonKey(name: "deal_id")
  String? dealId;

  @JsonKey(name: "owner_id")
  String? ownerId;

  @JsonKey(name: "proposal_status")
  String? proposal_status;

  @JsonKey(name: "system_size")
  String? system_size;

  @JsonKey(name: "system_offset")
  String? system_offset;

  @JsonKey(name: "ppw_contract_price")
  String? ppw_contract_price;

  @JsonKey(name: "choose_financing")
  String? choose_financing;

  @JsonKey(name: "add_a_bridge_loan")
  String? add_a_bridge_loan;

  @JsonKey(name: "down_payment")
  String? down_payment;

  @JsonKey(name: "tax_state")
  String? tax_state;

  @JsonKey(name: "tax_federal")
  String? tax_federal;

  @JsonKey(name: "nyserda_override")
  String? nyserda_override;

  @JsonKey(name: "total_solar_arrays")
  String? total_solar_arrays;

  @JsonKey(name: "steep_pitch_roof")
  String? steep_pitch_roof;

  @JsonKey(name: "flat_roof")
  String? flat_roof;

  @JsonKey(name: "metal_roof")
  String? metal_roof;

  @JsonKey(name: "ground_mt_rooftop")
  String? ground_mt_rooftop;

  @JsonKey(name: "wire_run_after_40ft")
  String? wire_run_after_40ft;

  @JsonKey(name: "roof_over_25ft")
  String? roof_over_25ft;

  @JsonKey(name: "trenching_per_ft")
  String? trenching_per_ft;

  @JsonKey(name: "internal_wire_run")
  String? internal_wire_run;

  @JsonKey(name: "tree_removal_cost")
  String? tree_removal_cost;

  @JsonKey(name: "additional_costs")
  String? additional_costs;

  @JsonKey(name: "permit_fee")
  String? permit_fee;

  @JsonKey(name: "m_to_interconnect")
  String? m_to_interconnect;

  @JsonKey(name: "electrical_work_1")
  dynamic electrical_work_1;

  @JsonKey(name: "hytech_quoted_price")
  String? spr_roof_price;

  @JsonKey(name: "other_work_price")
  String? other_work_price;

  @JsonKey(name: "grand_total")
  String? grand_total;

  @JsonKey(name: "solar_panels")
  String? solar_panels;

  @JsonKey(name: "panel_count")
  String? panel_count;

  @JsonKey(name: "inverter_type")
  String? inverter_type;

  String? battery_system;

  @JsonKey(name: "system_tsrf")
  String? system_tsrf;

  @JsonKey(name: "annual_usage")
  String? annual_usage;

  @JsonKey(name: "production_value")
  String? production_value;

  @JsonKey(name: "notes")
  String? notes;

  @JsonKey(name: "additional_project_total_price_override")
  String? additional_project_total_price_override;

  @JsonKey(name: "finance_options")
  String? finance_options;

  @JsonKey(name: "include_electrical_work")
  String? include_electrical_work;

  @JsonKey(name: "include_roofing_work")
  String? include_roofing_work;

  @JsonKey(name: "include_tax_credit_override")
  String? include_tax_credit_override;

  @JsonKey(name: "ppw_price_option")
  String? ppw_price_option;

  @JsonKey(name: "first_name")
  String? first_name;

  @JsonKey(name: "last_name")
  String? last_name;

  @JsonKey(name: "first_name_2")
  String? first_name_2;

  @JsonKey(name: "last_name_2")
  String? last_name_2;

  @JsonKey(name: "street")
  String? street;

  @JsonKey(name: "city")
  String? city;

  @JsonKey(name: "state")
  String? state;

  @JsonKey(name: "zipcode")
  String? zipcode;

  @JsonKey(name: "email")
  String? email;

  @JsonKey(name: "customer_2_email")
  String? customer_2_email;

  @JsonKey(name: "mobile_phone")
  String? mobile_phone;

  @JsonKey(name: "customer_2_mobile")
  String? customer_2_mobile;

  @JsonKey(name: "utility_company")
  String? utility_company;

  @JsonKey(name: "production")
  String? production;

  @JsonKey(name: "price_per_watt")
  String? price_per_watt;

  @JsonKey(name: "sales_rep_commission")
  String? sales_rep_commission;

  @JsonKey(name: "min_commission_rate")
  String? min_commission_rate;

  @JsonKey(name: "max_commission_rate")
  String? max_commission_rate;

  @JsonKey(name: "safety_railings")
  String? safety_railings;

  @JsonKey(name: "onyx_black_roofing")
  String? onyx_black_roofing;

  @JsonKey(name: "selected_roofing_color")
  String? selected_roofing_color;

  @JsonKey(name: "sheathing")
  String? sheathing;

  @JsonKey(name: "gutters_and_leaders")
  String? gutters_and_leaders;

  @JsonKey(name: "skylights")
  String? skylights;

  String? selected_sheathing = "0";

  String? selected_gutters_and_leaders = "0";

  String? selected_skylights = "0";

  String? installation_difficulty;

  String? installation_location;

  String? tesla_roof_square;

  String? tesla_roof_kw;

  ProposalContent({ this.recId, this.dealId, this.ownerId, this.proposal_status, this.system_size, this.system_offset, this.ppw_contract_price, this.choose_financing,
    this.add_a_bridge_loan, this.tax_state, this.down_payment, this.nyserda_override, this.total_solar_arrays, this.steep_pitch_roof, this.flat_roof, this.metal_roof,
  this.ground_mt_rooftop, this.wire_run_after_40ft, this.roof_over_25ft, this.trenching_per_ft, this.internal_wire_run, this.tree_removal_cost, this.additional_costs,
  this.permit_fee, this.m_to_interconnect, this.electrical_work_1, this.spr_roof_price, this.other_work_price, this.grand_total,this.solar_panels,
  this.panel_count, this.inverter_type, this.battery_system, this.system_tsrf, this.annual_usage, this.production_value, this.notes, this.additional_project_total_price_override,
  this.finance_options, this.include_electrical_work, this.include_roofing_work, this.include_tax_credit_override, this.ppw_price_option, this.first_name, this.last_name,
  this.first_name_2, this.last_name_2, this.street, this.city, this.state, this.zipcode, this.email, this.utility_company, this.price_per_watt, this.production,
  this.sales_rep_commission, this.max_commission_rate, this.min_commission_rate, this.mobile_phone, this.customer_2_email, this.customer_2_mobile, this.safety_railings, this.tax_federal,
  this.onyx_black_roofing, this.selected_roofing_color, this.skylights, this.gutters_and_leaders, this.sheathing, this.selected_sheathing, this.selected_gutters_and_leaders,
  this.selected_skylights, this.installation_difficulty, this.installation_location, this.tesla_roof_kw, this.tesla_roof_square});

  factory ProposalContent.fromJson(Map<String, dynamic> json) => _$ProposalContentFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalContentToJson(this);

}

String parseData(String d){
  return "";
}

@JsonSerializable()
class USAStatesEdit {

  int? rec_id;
  String? state_name;
  String? state_short;
  String? state_capital;

  USAStatesEdit({ this.rec_id, this.state_name, this.state_short, this.state_capital});

  factory USAStatesEdit.fromJson(Map<String, dynamic> json) => _$USAStatesEditFromJson(json);
  Map<String, dynamic> toJson() => _$USAStatesEditToJson(this);

}

@JsonSerializable()
class PtPickListsEdit {

  List<UtilityCompanyEdit>? utility_company;

  List<SolarPanelsEdit>? solar_panels;

  List<InverterTypeEdit>? inverter_type;

  List<BatterySystemEdit>? battery_system;

  List<AddABridgeLoanEdit>? add_a_bridge_loan;

  List<InstallationDifficultyEdit>? tesla_roof_installation_difficulty;

  List<InstallationLocationEdit>? tesla_roof_installation_location;

  PtPickListsEdit({ this.utility_company, this.add_a_bridge_loan, this.solar_panels, this.inverter_type, this.battery_system, this.tesla_roof_installation_difficulty, this.tesla_roof_installation_location});

  factory PtPickListsEdit.fromJson(Map<String, dynamic> json) => _$PtPickListsEditFromJson(json);
  Map<String, dynamic> toJson() => _$PtPickListsEditToJson(this);

}

@JsonSerializable()
class UtilityCompanyEdit {

  String? value;
  int? default_value;

  UtilityCompanyEdit({ this.value, this.default_value});

  factory UtilityCompanyEdit.fromJson(Map<String, dynamic> json) => _$UtilityCompanyEditFromJson(json);
  Map<String, dynamic> toJson() => _$UtilityCompanyEditToJson(this);

}

@JsonSerializable()
class SolarPanelsEdit {

  String? value;
  int? default_value;
  String? data_attribute_watts;

  SolarPanelsEdit({ this.value, this.default_value, this.data_attribute_watts});

  factory SolarPanelsEdit.fromJson(Map<String, dynamic> json) => _$SolarPanelsEditFromJson(json);
  Map<String, dynamic> toJson() => _$SolarPanelsEditToJson(this);

}

@JsonSerializable()
class InverterTypeEdit {

  String? value;
  int? default_value;

  InverterTypeEdit({ this.value, this.default_value});

  factory InverterTypeEdit.fromJson(Map<String, dynamic> json) => _$InverterTypeEditFromJson(json);
  Map<String, dynamic> toJson() => _$InverterTypeEditToJson(this);

}

@JsonSerializable()
class BatterySystemEdit {

  String? value;
  int? default_value;

  BatterySystemEdit({ this.value, this.default_value});

  factory BatterySystemEdit.fromJson(Map<String, dynamic> json) => _$BatterySystemEditFromJson(json);
  Map<String, dynamic> toJson() => _$BatterySystemEditToJson(this);

}

@JsonSerializable()
class AddABridgeLoanEdit {

  String? value;
  int? default_value;

  AddABridgeLoanEdit({ this.value, this.default_value});

  factory AddABridgeLoanEdit.fromJson(Map<String, dynamic> json) => _$AddABridgeLoanEditFromJson(json);
  Map<String, dynamic> toJson() => _$AddABridgeLoanEditToJson(this);

}

@JsonSerializable()
class ElectricalUpgradesEdit {

  int? rec_id;
  String? electrical_upgrades_work;
  String? cost;
  String? description;
  String? status;
  String? created_at;
  String? updated_at;

  ElectricalUpgradesEdit({ this.rec_id, this.electrical_upgrades_work, this.cost, this.description, this.status, this.created_at, this.updated_at});

  factory ElectricalUpgradesEdit.fromJson(Map<String, dynamic> json) => _$ElectricalUpgradesEditFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricalUpgradesEditToJson(this);

}

@JsonSerializable()
class DesignDataEdit {

  String? solar_layout_file_image;

  String? shade_report_file;

  String? site_survey_file;

  DesignDataEdit({ this.solar_layout_file_image, this.shade_report_file, this.site_survey_file});

  factory DesignDataEdit.fromJson(Map<String, dynamic> json) => _$DesignDataEditFromJson(json);
  Map<String, dynamic> toJson() => _$DesignDataEditToJson(this);

}

@JsonSerializable()
class ProfitMargin {

  double? total_to_partner;
  double? w;
  String? owner_name;
  double? sales_rep_profit_margin;
  double? system_size;
  FinanceOption? financeOption;

  ProfitMargin({ this.total_to_partner, this.w, this.owner_name, this.sales_rep_profit_margin, this.system_size});

  factory ProfitMargin.fromJson(Map<String, dynamic> json) => _$ProfitMarginFromJson(json);
  Map<String, dynamic> toJson() => _$ProfitMarginToJson(this);

}

@JsonSerializable()
class FinanceOption {

  String? finance_option;

  FinanceOption({ this.finance_option});

  factory FinanceOption.fromJson(Map<String, dynamic> json) => _$FinanceOptionFromJson(json);
  Map<String, dynamic> toJson() => _$FinanceOptionToJson(this);

}

@JsonSerializable()
class InstallationDifficultyEdit {

  String? value;
  int? default_value;

  InstallationDifficultyEdit({ this.value, this.default_value});

  factory InstallationDifficultyEdit.fromJson(Map<String, dynamic> json) => _$InstallationDifficultyEditFromJson(json);
  Map<String, dynamic> toJson() => _$InstallationDifficultyEditToJson(this);

}

@JsonSerializable()
class InstallationLocationEdit {

  String? value;
  int? default_value;

  InstallationLocationEdit({ this.value, this.default_value});

  factory InstallationLocationEdit.fromJson(Map<String, dynamic> json) => _$InstallationLocationEditFromJson(json);
  Map<String, dynamic> toJson() => _$InstallationLocationEditToJson(this);

}


