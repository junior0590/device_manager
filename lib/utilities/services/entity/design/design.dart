import 'package:json_annotation/json_annotation.dart';

part 'design.g.dart';

@JsonSerializable()
class Design {

  DesignRequest? design;

  Design({this.design});

  factory Design.fromJson(Map<String, dynamic> json) => _$DesignFromJson(json);
  Map<String, dynamic> toJson() => _$DesignToJson(this);

}

@JsonSerializable()
class DesignRequest {

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

  int? system_size;

  bool? include_roofing;

  bool? include_electrical_work;

  String? production;

  String? utility_company;

  bool? internal_wire_run;

  bool? tax_credit_override;

  String? hytech_quoted_price;

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

  double? sales_rep_commission;

  double? min_commission_rate;

  double? max_commission_rate;

  int? index;

  String? action;

  List<FilesFromInputFieldsDesign>? filesFromInputFields;

  DesignRequest({ this.solar_panels, this.battery_system, this.system_avg_tsrf, this.production_value, this.total_solar_arrays, this.steep_pitch_roof,
    this.flat_roof, this.metal_roof, this.ground_mt_rooftop, this.wire_run_after_40ft, this.roof_over_25ft, this.trenching_per_ft, this.internal_conduit_run,
    this.tree_removal_cost, this.additional_costs, this.permit_fees, this.m_to_interconnect, this.panel_count, this.annual_usage, this.solar_layout_file_image, this.designer,
    this.system_offset, this.system_size, this.include_roofing, this.include_electrical_work, this.production, this.utility_company, this.internal_wire_run, this.tax_credit_override,
    this.hytech_quoted_price, this.price_override, this.electrical_upgrades, this.other_work_price, this.grand_total, this.notes, this.additional_project_total_price_override,
    this.add_a_bridge_loan, this.down_payment, this.federal_tax, this.state_tax, this.nyserda_override, this.inverter_type, this.sales_rep_commission, this.min_commission_rate, this.max_commission_rate,
  this.filesFromInputFields, this.action, this.index});

  factory DesignRequest.fromJson(Map<String, dynamic> json) => _$DesignRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DesignRequestToJson(this);
}

@JsonSerializable()
class FilesFromInputFieldsDesign {

  String? filename;
  String? field_id;
  String? file;
  String? action;
  String? design_id;

  FilesFromInputFieldsDesign({ this.filename, this.field_id, this.file, this.action, this.design_id});

  factory FilesFromInputFieldsDesign.fromJson(Map<String, dynamic> json) => _$FilesFromInputFieldsDesignFromJson(json);
  Map<String, dynamic> toJson() => _$FilesFromInputFieldsDesignToJson(this);

}


