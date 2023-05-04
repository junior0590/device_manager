import 'package:json_annotation/json_annotation.dart';


part 'proposal_tool_entity.g.dart';

@JsonSerializable()
class ProposalToolEntity {

  Contact? contactDetails;

  Commission? commission;

  DesignData? design_details;

  DealData? deal;

  PtPickLists? ptPicklists;

  @JsonKey(name: "USAStates")
  List<USAStates>? usaStates;

  List<ElectricalUpgrades>? electrical_upgrades;

  PtTables? ptTables;

  int? status;

  ProposalToolEntity({this.contactDetails, this.commission, this.design_details, this.ptPicklists, this.usaStates, this.electrical_upgrades ,this.status, this.ptTables });

  factory ProposalToolEntity.fromJson(Map<String, dynamic> json) => _$ProposalToolEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalToolEntityToJson(this);

}

@JsonSerializable()
class Contact {

  int? rec_id;

  String? first_name;

  String? last_name;

  String? first_name2;

  String? last_name2;

  String? customer_2_email;

  String? customer_2_mobile;

  String? full_name;

  String? home_phone;

  String? mobile_phone;

  String? email;

  String? street;

  String? city;

  String? state;

  String? zipcode;

  String? country;

  Contact({ this.rec_id, this.first_name, this.last_name, this.full_name, this.home_phone, this.mobile_phone, this.email, this.street,
    this.city, this.state, this.zipcode, this.country, this.customer_2_mobile, this.customer_2_email, this.last_name2, this.first_name2});

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);

}

@JsonSerializable()
class Commission {

  double? price_per_watt;

  double? ppw_contract_price;

  String? min_commission_rate;

  String? max_commission_rate;

  String? sales_rep_commission;

  Commission({ this.price_per_watt, this.ppw_contract_price, this.min_commission_rate, this.max_commission_rate, this.sales_rep_commission});

  factory Commission.fromJson(Map<String, dynamic> json) => _$CommissionFromJson(json);
  Map<String, dynamic> toJson() => _$CommissionToJson(this);

}

@JsonSerializable()
class DesignData {

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

  String? permit_fees;

  String? m_to_interconnect;

  String? panel_count;

  String? annual_usage;

  String? solar_layout_file_image;

  String? designer;

  String? system_offset;

  String? system_size;

  bool? include_roofing;

  bool? include_electrical_work;

  String? production;

  String? utility_company;

  bool? internal_wire_run;

  bool? tax_credit_override;

  String? spr_roof_price;

  String? price_override;

  List<String>? electrical_upgrades;

  String? other_work_price;

  String? grand_total;

  String? notes;

  String? additional_project_total_price_override;

  String? add_a_bridge_loan;

  String? down_payment;

  String? federal_tax;

  String? state_tax;

  String? nyserda_override;

  String? inverter_type;

  String? sales_rep_commission;

  String? min_commission_rate;

  String? max_commission_rate;

  String? finance_option_type;

  String? safety_railings;

  String? onyx_black_roofing;

  String? selected_roofing_color;

  String? sheathing;

  String? gutters_and_leaders;

  String? skylights;

  int? selected_sheathing = 0;

  int? selected_gutters_and_leaders = 0;

  int? selected_skylights = 0;

  String? installation_difficulty;

  String? installation_location;

  String? tesla_roof_square;

  String? tesla_roof_kw;

  String? bridge_loan_override;

  DesignData({ this.solar_panels, this.battery_system, this.system_avg_tsrf, this.production_value, this.total_solar_arrays, this.steep_pitch_roof,
  this.flat_roof, this.metal_roof, this.ground_mt_rooftop, this.wire_run_after_40ft, this.roof_over_25ft, this.trenching_per_ft, this.internal_conduit_run,
  this.tree_removal_cost, this.additional_costs, this.permit_fees, this.m_to_interconnect, this.panel_count, this.annual_usage, this.solar_layout_file_image, this.designer,
  this.system_offset, this.system_size, this.include_roofing, this.include_electrical_work, this.production, this.utility_company, this.internal_wire_run, this.tax_credit_override,
  this.spr_roof_price, this.price_override, this.electrical_upgrades, this.other_work_price, this.grand_total, this.notes, this.additional_project_total_price_override,
  this.add_a_bridge_loan, this.down_payment, this.federal_tax, this.state_tax, this.nyserda_override, this.inverter_type, this.sales_rep_commission, this.min_commission_rate,
    this.max_commission_rate, this.finance_option_type, this.safety_railings, this.onyx_black_roofing, this.selected_roofing_color, this.sheathing, this.gutters_and_leaders,
  this.skylights, this.selected_sheathing, this.selected_gutters_and_leaders, this.selected_skylights, this.installation_difficulty, this.installation_location,
  this.tesla_roof_square, this.tesla_roof_kw, this.bridge_loan_override});

  factory DesignData.fromJson(Map<String, dynamic> json) => _$DesignDataFromJson(json);
  Map<String, dynamic> toJson() => _$DesignDataToJson(this);

}

@JsonSerializable()
class DealData {

  String? street;
  String? city;
  String? state;
  String? home_phone;
  String? mobile_phone;
  String? zipcode;
  String? email;

  DealData({ this.street, this.city, this.state, this.home_phone, this.mobile_phone, this.zipcode, this.email});

  factory DealData.fromJson(Map<String, dynamic> json) => _$DealDataFromJson(json);
  Map<String, dynamic> toJson() => _$DealDataToJson(this);

}

@JsonSerializable()
class USAStates {

  int? rec_id;
  String? state_name;
  String? state_short;
  String? state_capital;

  USAStates({ this.rec_id, this.state_name, this.state_short, this.state_capital});

  factory USAStates.fromJson(Map<String, dynamic> json) => _$USAStatesFromJson(json);
  Map<String, dynamic> toJson() => _$USAStatesToJson(this);

}

@JsonSerializable()
class PtPickLists {

  List<UtilityCompany>? utility_company;

  List<ChooseFinancing>? choose_financing;

  List<AddABridgeLoan>? add_a_bridge_loan;

  List<SolarPanels>? solar_panels;

  List<InverterType>? inverter_type;

  List<BatterySystem>? battery_system;

  List<InstallationDifficulty>? tesla_roof_installation_difficulty;

  List<InstallationLocation>? tesla_roof_installation_location;

  List<LeadSource>? lead_source;

  PtPickLists({ this.utility_company, this.choose_financing, this.add_a_bridge_loan, this.solar_panels, this.inverter_type,
    this.battery_system, this.tesla_roof_installation_difficulty, this.tesla_roof_installation_location, this.lead_source});

  factory PtPickLists.fromJson(Map<String, dynamic> json) => _$PtPickListsFromJson(json);
  Map<String, dynamic> toJson() => _$PtPickListsToJson(this);

}

@JsonSerializable()
class PtTables {

  List<PtLeadSource>? pt_lead_source;

  PtTables({ this.pt_lead_source});

  factory PtTables.fromJson(Map<String, dynamic> json) => _$PtTablesFromJson(json);
  Map<String, dynamic> toJson() => _$PtTablesToJson(this);

}

@JsonSerializable()
class PtLeadSource {

  int? rec_id;
  String? source_name;
  String? start_value;
  String? adder_value;
  String? uses_formula;

  PtLeadSource({ this.rec_id, this.source_name, this.start_value, this.adder_value, this.uses_formula});

  factory PtLeadSource.fromJson(Map<String, dynamic> json) => _$PtLeadSourceFromJson(json);
  Map<String, dynamic> toJson() => _$PtLeadSourceToJson(this);

}

@JsonSerializable()
class UtilityCompany {

  String? value;
  int? default_value;

  UtilityCompany({ this.value, this.default_value});

  factory UtilityCompany.fromJson(Map<String, dynamic> json) => _$UtilityCompanyFromJson(json);
  Map<String, dynamic> toJson() => _$UtilityCompanyToJson(this);

}

@JsonSerializable()
class ChooseFinancing {

  String? value;
  int? default_value;

  ChooseFinancing({ this.value, this.default_value});

  factory ChooseFinancing.fromJson(Map<String, dynamic> json) => _$ChooseFinancingFromJson(json);
  Map<String, dynamic> toJson() => _$ChooseFinancingToJson(this);
}

@JsonSerializable()
class AddABridgeLoan {

  String? value;
  int? default_value;

  AddABridgeLoan({ this.value, this.default_value});

  factory AddABridgeLoan.fromJson(Map<String, dynamic> json) => _$AddABridgeLoanFromJson(json);
  Map<String, dynamic> toJson() => _$AddABridgeLoanToJson(this);

}

@JsonSerializable()
class SolarPanels {

  String? value;
  int? default_value;
  String? data_attribute_watts;

  SolarPanels({ this.value, this.default_value, this.data_attribute_watts});

  factory SolarPanels.fromJson(Map<String, dynamic> json) => _$SolarPanelsFromJson(json);
  Map<String, dynamic> toJson() => _$SolarPanelsToJson(this);

}

@JsonSerializable()
class InverterType {

  String? value;
  int? default_value;

  InverterType({ this.value, this.default_value});

  factory InverterType.fromJson(Map<String, dynamic> json) => _$InverterTypeFromJson(json);
  Map<String, dynamic> toJson() => _$InverterTypeToJson(this);

}

@JsonSerializable()
class BatterySystem {

  String? value;
  int? default_value;

  BatterySystem({ this.value, this.default_value});

  factory BatterySystem.fromJson(Map<String, dynamic> json) => _$BatterySystemFromJson(json);
  Map<String, dynamic> toJson() => _$BatterySystemToJson(this);

}

@JsonSerializable()
class ElectricalUpgrades {

  int? rec_id;
  String? electrical_upgrades_work;
  String? cost;
  String? description;
  String? status;
  String? created_at;
  String? updated_at;

  ElectricalUpgrades({ this.rec_id, this.electrical_upgrades_work, this.cost, this.description, this.status, this.created_at, this.updated_at});

  factory ElectricalUpgrades.fromJson(Map<String, dynamic> json) => _$ElectricalUpgradesFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricalUpgradesToJson(this);

}

@JsonSerializable()
class InstallationDifficulty {

  String? value;
  int? default_value;

  InstallationDifficulty({ this.value, this.default_value});

  factory InstallationDifficulty.fromJson(Map<String, dynamic> json) => _$InstallationDifficultyFromJson(json);
  Map<String, dynamic> toJson() => _$InstallationDifficultyToJson(this);

}

@JsonSerializable()
class InstallationLocation {

  String? value;
  int? default_value;

  InstallationLocation({ this.value, this.default_value});

  factory InstallationLocation.fromJson(Map<String, dynamic> json) => _$InstallationLocationFromJson(json);
  Map<String, dynamic> toJson() => _$InstallationLocationToJson(this);

}

@JsonSerializable()
class LeadSource {

  String? value;
  bool? default_value;
  String? display_value;

  LeadSource({ this.value, this.default_value, this.display_value});

  factory LeadSource.fromJson(Map<String, dynamic> json) => _$LeadSourceFromJson(json);
  Map<String, dynamic> toJson() => _$LeadSourceToJson(this);

}


