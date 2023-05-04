import 'package:json_annotation/json_annotation.dart';

part 'pandadoc_data.g.dart';

@JsonSerializable()
class PandadocData {
  ContractPandaData? contractData;

  int? status;

  PandadocData({
    this.contractData,
    this.status,
  });

  factory PandadocData.fromJson(Map<String, dynamic> json) => _$PandadocDataFromJson(json);

  Map<String, dynamic> toJson() => _$PandadocDataToJson(this);
}

@JsonSerializable()
class ContractPandaData {
  String? template_id;

  String? proposed_solar_panel;

  String? proposed_battery;

  String? professional_engineering_fees;

  String? nyserda_rebate;

  String? total_amount_due;

  String? second_payment;

  String? final_payment;

  String? final_payment_1;

  String? final_payment_note;

  String? final_payment_1_note;

  String? solar_pv_system_with_installation_price;

  String? proposed_work_title;

  String? panel_count;

  String? proposed_microinverter;

  String? customer_name_1;

  String? first_name_1;

  String? last_name_1;

  String? first_name_2;

  String? last_name_2;

  String? customer_name_2;

  String? proposed_work_notes;

  String? permit_and_expediting_fees;

  String? down_payment;

  String? payment_process_note;

  String? payment_process_note_footer;

  String? roof_replacement_text;

  String? roof_replacement_note;

  String? additional_electrical_work;

  String? terms_and_conditions_notes;

  String? proposal_id;

  String? total_contract_price;

  String? customer_1_email;

  String? customer_1_address;

  String? customer_1_mobile;

  String? customer_2_email;

  String? customer_2_mobile;

  String? include_electrical_work;

  String? include_roofing_work;

  String? company_signer_first_name;

  String? company_signer_last_name;

  String? company_signer_email;

  String? deal_url;

  String? total_electrical_work;

  String? total_roof_price;

  String? license_list;

  String? terms_page3;

  String? terms_page2;

  String? terms_page1;

  String? cancellation_notice;

  String? reciept_acknowledgement;

  String? proposal_acceptance;

  String? payment_footprint;

  String? roofing_footprint;

  String? customer_1_photo_id;

  String? customer_2_photo_id;

  String? customer_address;

  String? finance_option_header;

  String? finance_option_text;

  String? bridge_loan_header;

  String? bridge_loan_text;

  String? additional_projects_text;

  String? additional_projects_pricing;

  ContractPandaData({
    this.template_id,
    this.proposed_solar_panel,
    this.proposed_battery,
    this.professional_engineering_fees,
    this.nyserda_rebate,
    this.total_amount_due,
    this.second_payment,
    this.final_payment,
    this.final_payment_1,
    this.final_payment_note,
    this.final_payment_1_note,
    this.solar_pv_system_with_installation_price,
    this.proposed_work_title,
    this.panel_count,
    this.proposed_microinverter,
    this.customer_name_1,
    this.first_name_1,
    this.last_name_1,
    this.first_name_2,
    this.last_name_2,
    this.customer_name_2,
    this.proposed_work_notes,
    this.permit_and_expediting_fees,
    this.down_payment,
    this.payment_process_note,
    this.payment_process_note_footer,
    this.roof_replacement_text,
    this.roof_replacement_note,
    this.additional_electrical_work,
    this.terms_and_conditions_notes,
    this.proposal_id,
    this.total_contract_price,
    this.customer_1_email,
    this.customer_1_address,
    this.customer_1_mobile,
    this.customer_2_email,
    this.customer_2_mobile,
    this.include_electrical_work,
    this.include_roofing_work,
    this.company_signer_first_name,
    this.company_signer_last_name,
    this.company_signer_email,
    this.deal_url,
    this.total_electrical_work,
    this.total_roof_price,
    this.license_list,
    this.terms_page3,
    this.terms_page2,
    this.terms_page1,
    this.cancellation_notice,
    this.reciept_acknowledgement,
    this.proposal_acceptance,
    this.payment_footprint,
    this.roofing_footprint,
    this.customer_1_photo_id,
    this.customer_2_photo_id,
    this.customer_address,
    this.finance_option_header,
    this.finance_option_text,
    this.bridge_loan_header,
    this.bridge_loan_text,
    this.additional_projects_text,
    this.additional_projects_pricing
  });

  factory ContractPandaData.fromJson(Map<String, dynamic> json) => _$ContractPandaDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContractPandaDataToJson(this);
}
