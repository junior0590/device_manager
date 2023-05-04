// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_edit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalEditResponse _$ProposalEditResponseFromJson(
        Map<String, dynamic> json) =>
    ProposalEditResponse(
      proposalContent: json['proposalContent'] == null
          ? null
          : ProposalContent.fromJson(
              json['proposalContent'] as Map<String, dynamic>),
      status: json['status'] as int?,
      usaStates: (json['USAStates'] as List<dynamic>?)
          ?.map((e) => USAStatesEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      design_details: json['design_details'] == null
          ? null
          : DesignDataEdit.fromJson(
              json['design_details'] as Map<String, dynamic>),
      electrical_upgrades: (json['electrical_upgrades'] as List<dynamic>?)
          ?.map(
              (e) => ElectricalUpgradesEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      ptPicklists: json['ptPicklists'] == null
          ? null
          : PtPickListsEdit.fromJson(
              json['ptPicklists'] as Map<String, dynamic>),
    )..profitMargin = json['profitMargin'] == null
        ? null
        : ProfitMargin.fromJson(json['profitMargin'] as Map<String, dynamic>);

Map<String, dynamic> _$ProposalEditResponseToJson(
        ProposalEditResponse instance) =>
    <String, dynamic>{
      'proposalContent': instance.proposalContent,
      'USAStates': instance.usaStates,
      'ptPicklists': instance.ptPicklists,
      'design_details': instance.design_details,
      'electrical_upgrades': instance.electrical_upgrades,
      'profitMargin': instance.profitMargin,
      'status': instance.status,
    };

ProposalContent _$ProposalContentFromJson(Map<String, dynamic> json) =>
    ProposalContent(
      recId: json['rec_id'] as String?,
      dealId: json['deal_id'] as String?,
      ownerId: json['owner_id'] as String?,
      proposal_status: json['proposal_status'] as String?,
      system_size: json['system_size'] as String?,
      system_offset: json['system_offset'] as String?,
      ppw_contract_price: json['ppw_contract_price'] as String?,
      choose_financing: json['choose_financing'] as String?,
      add_a_bridge_loan: json['add_a_bridge_loan'] as String?,
      tax_state: json['tax_state'] as String?,
      down_payment: json['down_payment'] as String?,
      nyserda_override: json['nyserda_override'] as String?,
      total_solar_arrays: json['total_solar_arrays'] as String?,
      steep_pitch_roof: json['steep_pitch_roof'] as String?,
      flat_roof: json['flat_roof'] as String?,
      metal_roof: json['metal_roof'] as String?,
      ground_mt_rooftop: json['ground_mt_rooftop'] as String?,
      wire_run_after_40ft: json['wire_run_after_40ft'] as String?,
      roof_over_25ft: json['roof_over_25ft'] as String?,
      trenching_per_ft: json['trenching_per_ft'] as String?,
      internal_wire_run: json['internal_wire_run'] as String?,
      tree_removal_cost: json['tree_removal_cost'] as String?,
      additional_costs: json['additional_costs'] as String?,
      permit_fee: json['permit_fee'] as String?,
      m_to_interconnect: json['m_to_interconnect'] as String?,
      electrical_work_1: json['electrical_work_1'],
      spr_roof_price: json['hytech_quoted_price'] as String?,
      other_work_price: json['other_work_price'] as String?,
      grand_total: json['grand_total'] as String?,
      solar_panels: json['solar_panels'] as String?,
      panel_count: json['panel_count'] as String?,
      inverter_type: json['inverter_type'] as String?,
      battery_system: json['battery_system'] as String?,
      system_tsrf: json['system_tsrf'] as String?,
      annual_usage: json['annual_usage'] as String?,
      production_value: json['production_value'] as String?,
      notes: json['notes'] as String?,
      additional_project_total_price_override:
          json['additional_project_total_price_override'] as String?,
      finance_options: json['finance_options'] as String?,
      include_electrical_work: json['include_electrical_work'] as String?,
      include_roofing_work: json['include_roofing_work'] as String?,
      include_tax_credit_override:
          json['include_tax_credit_override'] as String?,
      ppw_price_option: json['ppw_price_option'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      first_name_2: json['first_name_2'] as String?,
      last_name_2: json['last_name_2'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      email: json['email'] as String?,
      utility_company: json['utility_company'] as String?,
      price_per_watt: json['price_per_watt'] as String?,
      production: json['production'] as String?,
      sales_rep_commission: json['sales_rep_commission'] as String?,
      max_commission_rate: json['max_commission_rate'] as String?,
      min_commission_rate: json['min_commission_rate'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      customer_2_email: json['customer_2_email'] as String?,
      customer_2_mobile: json['customer_2_mobile'] as String?,
      safety_railings: json['safety_railings'] as String?,
      tax_federal: json['tax_federal'] as String?,
      onyx_black_roofing: json['onyx_black_roofing'] as String?,
      selected_roofing_color: json['selected_roofing_color'] as String?,
      skylights: json['skylights'] as String?,
      gutters_and_leaders: json['gutters_and_leaders'] as String?,
      sheathing: json['sheathing'] as String?,
      selected_sheathing: json['selected_sheathing'] as String?,
      selected_gutters_and_leaders:
          json['selected_gutters_and_leaders'] as String?,
      selected_skylights: json['selected_skylights'] as String?,
      installation_difficulty: json['installation_difficulty'] as String?,
      installation_location: json['installation_location'] as String?,
      tesla_roof_kw: json['tesla_roof_kw'] as String?,
      tesla_roof_square: json['tesla_roof_square'] as String?,
    );

Map<String, dynamic> _$ProposalContentToJson(ProposalContent instance) =>
    <String, dynamic>{
      'rec_id': instance.recId,
      'deal_id': instance.dealId,
      'owner_id': instance.ownerId,
      'proposal_status': instance.proposal_status,
      'system_size': instance.system_size,
      'system_offset': instance.system_offset,
      'ppw_contract_price': instance.ppw_contract_price,
      'choose_financing': instance.choose_financing,
      'add_a_bridge_loan': instance.add_a_bridge_loan,
      'down_payment': instance.down_payment,
      'tax_state': instance.tax_state,
      'tax_federal': instance.tax_federal,
      'nyserda_override': instance.nyserda_override,
      'total_solar_arrays': instance.total_solar_arrays,
      'steep_pitch_roof': instance.steep_pitch_roof,
      'flat_roof': instance.flat_roof,
      'metal_roof': instance.metal_roof,
      'ground_mt_rooftop': instance.ground_mt_rooftop,
      'wire_run_after_40ft': instance.wire_run_after_40ft,
      'roof_over_25ft': instance.roof_over_25ft,
      'trenching_per_ft': instance.trenching_per_ft,
      'internal_wire_run': instance.internal_wire_run,
      'tree_removal_cost': instance.tree_removal_cost,
      'additional_costs': instance.additional_costs,
      'permit_fee': instance.permit_fee,
      'm_to_interconnect': instance.m_to_interconnect,
      'electrical_work_1': instance.electrical_work_1,
      'hytech_quoted_price': instance.spr_roof_price,
      'other_work_price': instance.other_work_price,
      'grand_total': instance.grand_total,
      'solar_panels': instance.solar_panels,
      'panel_count': instance.panel_count,
      'inverter_type': instance.inverter_type,
      'battery_system': instance.battery_system,
      'system_tsrf': instance.system_tsrf,
      'annual_usage': instance.annual_usage,
      'production_value': instance.production_value,
      'notes': instance.notes,
      'additional_project_total_price_override':
          instance.additional_project_total_price_override,
      'finance_options': instance.finance_options,
      'include_electrical_work': instance.include_electrical_work,
      'include_roofing_work': instance.include_roofing_work,
      'include_tax_credit_override': instance.include_tax_credit_override,
      'ppw_price_option': instance.ppw_price_option,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'first_name_2': instance.first_name_2,
      'last_name_2': instance.last_name_2,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'email': instance.email,
      'customer_2_email': instance.customer_2_email,
      'mobile_phone': instance.mobile_phone,
      'customer_2_mobile': instance.customer_2_mobile,
      'utility_company': instance.utility_company,
      'production': instance.production,
      'price_per_watt': instance.price_per_watt,
      'sales_rep_commission': instance.sales_rep_commission,
      'min_commission_rate': instance.min_commission_rate,
      'max_commission_rate': instance.max_commission_rate,
      'safety_railings': instance.safety_railings,
      'onyx_black_roofing': instance.onyx_black_roofing,
      'selected_roofing_color': instance.selected_roofing_color,
      'sheathing': instance.sheathing,
      'gutters_and_leaders': instance.gutters_and_leaders,
      'skylights': instance.skylights,
      'selected_sheathing': instance.selected_sheathing,
      'selected_gutters_and_leaders': instance.selected_gutters_and_leaders,
      'selected_skylights': instance.selected_skylights,
      'installation_difficulty': instance.installation_difficulty,
      'installation_location': instance.installation_location,
      'tesla_roof_square': instance.tesla_roof_square,
      'tesla_roof_kw': instance.tesla_roof_kw,
    };

USAStatesEdit _$USAStatesEditFromJson(Map<String, dynamic> json) =>
    USAStatesEdit(
      rec_id: json['rec_id'] as int?,
      state_name: json['state_name'] as String?,
      state_short: json['state_short'] as String?,
      state_capital: json['state_capital'] as String?,
    );

Map<String, dynamic> _$USAStatesEditToJson(USAStatesEdit instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'state_name': instance.state_name,
      'state_short': instance.state_short,
      'state_capital': instance.state_capital,
    };

PtPickListsEdit _$PtPickListsEditFromJson(Map<String, dynamic> json) =>
    PtPickListsEdit(
      utility_company: (json['utility_company'] as List<dynamic>?)
          ?.map((e) => UtilityCompanyEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      add_a_bridge_loan: (json['add_a_bridge_loan'] as List<dynamic>?)
          ?.map((e) => AddABridgeLoanEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      solar_panels: (json['solar_panels'] as List<dynamic>?)
          ?.map((e) => SolarPanelsEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      inverter_type: (json['inverter_type'] as List<dynamic>?)
          ?.map((e) => InverterTypeEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      battery_system: (json['battery_system'] as List<dynamic>?)
          ?.map((e) => BatterySystemEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      tesla_roof_installation_difficulty:
          (json['tesla_roof_installation_difficulty'] as List<dynamic>?)
              ?.map((e) => InstallationDifficultyEdit.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      tesla_roof_installation_location:
          (json['tesla_roof_installation_location'] as List<dynamic>?)
              ?.map((e) =>
                  InstallationLocationEdit.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PtPickListsEditToJson(PtPickListsEdit instance) =>
    <String, dynamic>{
      'utility_company': instance.utility_company,
      'solar_panels': instance.solar_panels,
      'inverter_type': instance.inverter_type,
      'battery_system': instance.battery_system,
      'add_a_bridge_loan': instance.add_a_bridge_loan,
      'tesla_roof_installation_difficulty':
          instance.tesla_roof_installation_difficulty,
      'tesla_roof_installation_location':
          instance.tesla_roof_installation_location,
    };

UtilityCompanyEdit _$UtilityCompanyEditFromJson(Map<String, dynamic> json) =>
    UtilityCompanyEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$UtilityCompanyEditToJson(UtilityCompanyEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

SolarPanelsEdit _$SolarPanelsEditFromJson(Map<String, dynamic> json) =>
    SolarPanelsEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
      data_attribute_watts: json['data_attribute_watts'] as String?,
    );

Map<String, dynamic> _$SolarPanelsEditToJson(SolarPanelsEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
      'data_attribute_watts': instance.data_attribute_watts,
    };

InverterTypeEdit _$InverterTypeEditFromJson(Map<String, dynamic> json) =>
    InverterTypeEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InverterTypeEditToJson(InverterTypeEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

BatterySystemEdit _$BatterySystemEditFromJson(Map<String, dynamic> json) =>
    BatterySystemEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$BatterySystemEditToJson(BatterySystemEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

AddABridgeLoanEdit _$AddABridgeLoanEditFromJson(Map<String, dynamic> json) =>
    AddABridgeLoanEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$AddABridgeLoanEditToJson(AddABridgeLoanEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

ElectricalUpgradesEdit _$ElectricalUpgradesEditFromJson(
        Map<String, dynamic> json) =>
    ElectricalUpgradesEdit(
      rec_id: json['rec_id'] as int?,
      electrical_upgrades_work: json['electrical_upgrades_work'] as String?,
      cost: json['cost'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ElectricalUpgradesEditToJson(
        ElectricalUpgradesEdit instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'electrical_upgrades_work': instance.electrical_upgrades_work,
      'cost': instance.cost,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

DesignDataEdit _$DesignDataEditFromJson(Map<String, dynamic> json) =>
    DesignDataEdit(
      solar_layout_file_image: json['solar_layout_file_image'] as String?,
      shade_report_file: json['shade_report_file'] as String?,
      site_survey_file: json['site_survey_file'] as String?,
    );

Map<String, dynamic> _$DesignDataEditToJson(DesignDataEdit instance) =>
    <String, dynamic>{
      'solar_layout_file_image': instance.solar_layout_file_image,
      'shade_report_file': instance.shade_report_file,
      'site_survey_file': instance.site_survey_file,
    };

ProfitMargin _$ProfitMarginFromJson(Map<String, dynamic> json) => ProfitMargin(
      total_to_partner: (json['total_to_partner'] as num?)?.toDouble(),
      w: (json['w'] as num?)?.toDouble(),
      owner_name: json['owner_name'] as String?,
      sales_rep_profit_margin:
          (json['sales_rep_profit_margin'] as num?)?.toDouble(),
      system_size: (json['system_size'] as num?)?.toDouble(),
    )..financeOption = json['financeOption'] == null
        ? null
        : FinanceOption.fromJson(json['financeOption'] as Map<String, dynamic>);

Map<String, dynamic> _$ProfitMarginToJson(ProfitMargin instance) =>
    <String, dynamic>{
      'total_to_partner': instance.total_to_partner,
      'w': instance.w,
      'owner_name': instance.owner_name,
      'sales_rep_profit_margin': instance.sales_rep_profit_margin,
      'system_size': instance.system_size,
      'financeOption': instance.financeOption,
    };

FinanceOption _$FinanceOptionFromJson(Map<String, dynamic> json) =>
    FinanceOption(
      finance_option: json['finance_option'] as String?,
    );

Map<String, dynamic> _$FinanceOptionToJson(FinanceOption instance) =>
    <String, dynamic>{
      'finance_option': instance.finance_option,
    };

InstallationDifficultyEdit _$InstallationDifficultyEditFromJson(
        Map<String, dynamic> json) =>
    InstallationDifficultyEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InstallationDifficultyEditToJson(
        InstallationDifficultyEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

InstallationLocationEdit _$InstallationLocationEditFromJson(
        Map<String, dynamic> json) =>
    InstallationLocationEdit(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InstallationLocationEditToJson(
        InstallationLocationEdit instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };
