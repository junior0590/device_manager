// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_tool_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalToolEntity _$ProposalToolEntityFromJson(Map<String, dynamic> json) =>
    ProposalToolEntity(
      contactDetails: json['contactDetails'] == null
          ? null
          : Contact.fromJson(json['contactDetails'] as Map<String, dynamic>),
      commission: json['commission'] == null
          ? null
          : Commission.fromJson(json['commission'] as Map<String, dynamic>),
      design_details: json['design_details'] == null
          ? null
          : DesignData.fromJson(json['design_details'] as Map<String, dynamic>),
      ptPicklists: json['ptPicklists'] == null
          ? null
          : PtPickLists.fromJson(json['ptPicklists'] as Map<String, dynamic>),
      usaStates: (json['USAStates'] as List<dynamic>?)
          ?.map((e) => USAStates.fromJson(e as Map<String, dynamic>))
          .toList(),
      electrical_upgrades: (json['electrical_upgrades'] as List<dynamic>?)
          ?.map((e) => ElectricalUpgrades.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
      ptTables: json['ptTables'] == null
          ? null
          : PtTables.fromJson(json['ptTables'] as Map<String, dynamic>),
    )..deal = json['deal'] == null
        ? null
        : DealData.fromJson(json['deal'] as Map<String, dynamic>);

Map<String, dynamic> _$ProposalToolEntityToJson(ProposalToolEntity instance) =>
    <String, dynamic>{
      'contactDetails': instance.contactDetails,
      'commission': instance.commission,
      'design_details': instance.design_details,
      'deal': instance.deal,
      'ptPicklists': instance.ptPicklists,
      'USAStates': instance.usaStates,
      'electrical_upgrades': instance.electrical_upgrades,
      'ptTables': instance.ptTables,
      'status': instance.status,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      rec_id: json['rec_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      home_phone: json['home_phone'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      email: json['email'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
      customer_2_mobile: json['customer_2_mobile'] as String?,
      customer_2_email: json['customer_2_email'] as String?,
      last_name2: json['last_name2'] as String?,
      first_name2: json['first_name2'] as String?,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'first_name2': instance.first_name2,
      'last_name2': instance.last_name2,
      'customer_2_email': instance.customer_2_email,
      'customer_2_mobile': instance.customer_2_mobile,
      'full_name': instance.full_name,
      'home_phone': instance.home_phone,
      'mobile_phone': instance.mobile_phone,
      'email': instance.email,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'country': instance.country,
    };

Commission _$CommissionFromJson(Map<String, dynamic> json) => Commission(
      price_per_watt: (json['price_per_watt'] as num?)?.toDouble(),
      ppw_contract_price: (json['ppw_contract_price'] as num?)?.toDouble(),
      min_commission_rate: json['min_commission_rate'] as String?,
      max_commission_rate: json['max_commission_rate'] as String?,
      sales_rep_commission: json['sales_rep_commission'] as String?,
    );

Map<String, dynamic> _$CommissionToJson(Commission instance) =>
    <String, dynamic>{
      'price_per_watt': instance.price_per_watt,
      'ppw_contract_price': instance.ppw_contract_price,
      'min_commission_rate': instance.min_commission_rate,
      'max_commission_rate': instance.max_commission_rate,
      'sales_rep_commission': instance.sales_rep_commission,
    };

DesignData _$DesignDataFromJson(Map<String, dynamic> json) => DesignData(
      solar_panels: json['solar_panels'] as String?,
      battery_system: json['battery_system'] as String?,
      system_avg_tsrf: json['system_avg_tsrf'] as String?,
      production_value: json['production_value'] as String?,
      total_solar_arrays: json['total_solar_arrays'] as String?,
      steep_pitch_roof: json['steep_pitch_roof'] as String?,
      flat_roof: json['flat_roof'] as String?,
      metal_roof: json['metal_roof'] as String?,
      ground_mt_rooftop: json['ground_mt_rooftop'] as String?,
      wire_run_after_40ft: json['wire_run_after_40ft'] as String?,
      roof_over_25ft: json['roof_over_25ft'] as String?,
      trenching_per_ft: json['trenching_per_ft'] as String?,
      internal_conduit_run: json['internal_conduit_run'] as String?,
      tree_removal_cost: json['tree_removal_cost'] as String?,
      additional_costs: json['additional_costs'] as String?,
      permit_fees: json['permit_fees'] as String?,
      m_to_interconnect: json['m_to_interconnect'] as String?,
      panel_count: json['panel_count'] as String?,
      annual_usage: json['annual_usage'] as String?,
      solar_layout_file_image: json['solar_layout_file_image'] as String?,
      designer: json['designer'] as String?,
      system_offset: json['system_offset'] as String?,
      system_size: json['system_size'] as String?,
      include_roofing: json['include_roofing'] as bool?,
      include_electrical_work: json['include_electrical_work'] as bool?,
      production: json['production'] as String?,
      utility_company: json['utility_company'] as String?,
      internal_wire_run: json['internal_wire_run'] as bool?,
      tax_credit_override: json['tax_credit_override'] as bool?,
      spr_roof_price: json['spr_roof_price'] as String?,
      price_override: json['price_override'] as String?,
      electrical_upgrades: (json['electrical_upgrades'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      other_work_price: json['other_work_price'] as String?,
      grand_total: json['grand_total'] as String?,
      notes: json['notes'] as String?,
      additional_project_total_price_override:
          json['additional_project_total_price_override'] as String?,
      add_a_bridge_loan: json['add_a_bridge_loan'] as String?,
      down_payment: json['down_payment'] as String?,
      federal_tax: json['federal_tax'] as String?,
      state_tax: json['state_tax'] as String?,
      nyserda_override: json['nyserda_override'] as String?,
      inverter_type: json['inverter_type'] as String?,
      sales_rep_commission: json['sales_rep_commission'] as String?,
      min_commission_rate: json['min_commission_rate'] as String?,
      max_commission_rate: json['max_commission_rate'] as String?,
      finance_option_type: json['finance_option_type'] as String?,
      safety_railings: json['safety_railings'] as String?,
      onyx_black_roofing: json['onyx_black_roofing'] as String?,
      selected_roofing_color: json['selected_roofing_color'] as String?,
      sheathing: json['sheathing'] as String?,
      gutters_and_leaders: json['gutters_and_leaders'] as String?,
      skylights: json['skylights'] as String?,
      selected_sheathing: json['selected_sheathing'] as int?,
      selected_gutters_and_leaders:
          json['selected_gutters_and_leaders'] as int?,
      selected_skylights: json['selected_skylights'] as int?,
      installation_difficulty: json['installation_difficulty'] as String?,
      installation_location: json['installation_location'] as String?,
      tesla_roof_square: json['tesla_roof_square'] as String?,
      tesla_roof_kw: json['tesla_roof_kw'] as String?,
      bridge_loan_override: json['bridge_loan_override'] as String?,
    );

Map<String, dynamic> _$DesignDataToJson(DesignData instance) =>
    <String, dynamic>{
      'solar_panels': instance.solar_panels,
      'battery_system': instance.battery_system,
      'system_avg_tsrf': instance.system_avg_tsrf,
      'production_value': instance.production_value,
      'total_solar_arrays': instance.total_solar_arrays,
      'steep_pitch_roof': instance.steep_pitch_roof,
      'flat_roof': instance.flat_roof,
      'metal_roof': instance.metal_roof,
      'ground_mt_rooftop': instance.ground_mt_rooftop,
      'wire_run_after_40ft': instance.wire_run_after_40ft,
      'roof_over_25ft': instance.roof_over_25ft,
      'trenching_per_ft': instance.trenching_per_ft,
      'internal_conduit_run': instance.internal_conduit_run,
      'tree_removal_cost': instance.tree_removal_cost,
      'additional_costs': instance.additional_costs,
      'permit_fees': instance.permit_fees,
      'm_to_interconnect': instance.m_to_interconnect,
      'panel_count': instance.panel_count,
      'annual_usage': instance.annual_usage,
      'solar_layout_file_image': instance.solar_layout_file_image,
      'designer': instance.designer,
      'system_offset': instance.system_offset,
      'system_size': instance.system_size,
      'include_roofing': instance.include_roofing,
      'include_electrical_work': instance.include_electrical_work,
      'production': instance.production,
      'utility_company': instance.utility_company,
      'internal_wire_run': instance.internal_wire_run,
      'tax_credit_override': instance.tax_credit_override,
      'spr_roof_price': instance.spr_roof_price,
      'price_override': instance.price_override,
      'electrical_upgrades': instance.electrical_upgrades,
      'other_work_price': instance.other_work_price,
      'grand_total': instance.grand_total,
      'notes': instance.notes,
      'additional_project_total_price_override':
          instance.additional_project_total_price_override,
      'add_a_bridge_loan': instance.add_a_bridge_loan,
      'down_payment': instance.down_payment,
      'federal_tax': instance.federal_tax,
      'state_tax': instance.state_tax,
      'nyserda_override': instance.nyserda_override,
      'inverter_type': instance.inverter_type,
      'sales_rep_commission': instance.sales_rep_commission,
      'min_commission_rate': instance.min_commission_rate,
      'max_commission_rate': instance.max_commission_rate,
      'finance_option_type': instance.finance_option_type,
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
      'bridge_loan_override': instance.bridge_loan_override,
    };

DealData _$DealDataFromJson(Map<String, dynamic> json) => DealData(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      home_phone: json['home_phone'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      zipcode: json['zipcode'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$DealDataToJson(DealData instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'home_phone': instance.home_phone,
      'mobile_phone': instance.mobile_phone,
      'zipcode': instance.zipcode,
      'email': instance.email,
    };

USAStates _$USAStatesFromJson(Map<String, dynamic> json) => USAStates(
      rec_id: json['rec_id'] as int?,
      state_name: json['state_name'] as String?,
      state_short: json['state_short'] as String?,
      state_capital: json['state_capital'] as String?,
    );

Map<String, dynamic> _$USAStatesToJson(USAStates instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'state_name': instance.state_name,
      'state_short': instance.state_short,
      'state_capital': instance.state_capital,
    };

PtPickLists _$PtPickListsFromJson(Map<String, dynamic> json) => PtPickLists(
      utility_company: (json['utility_company'] as List<dynamic>?)
          ?.map((e) => UtilityCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      choose_financing: (json['choose_financing'] as List<dynamic>?)
          ?.map((e) => ChooseFinancing.fromJson(e as Map<String, dynamic>))
          .toList(),
      add_a_bridge_loan: (json['add_a_bridge_loan'] as List<dynamic>?)
          ?.map((e) => AddABridgeLoan.fromJson(e as Map<String, dynamic>))
          .toList(),
      solar_panels: (json['solar_panels'] as List<dynamic>?)
          ?.map((e) => SolarPanels.fromJson(e as Map<String, dynamic>))
          .toList(),
      inverter_type: (json['inverter_type'] as List<dynamic>?)
          ?.map((e) => InverterType.fromJson(e as Map<String, dynamic>))
          .toList(),
      battery_system: (json['battery_system'] as List<dynamic>?)
          ?.map((e) => BatterySystem.fromJson(e as Map<String, dynamic>))
          .toList(),
      tesla_roof_installation_difficulty:
          (json['tesla_roof_installation_difficulty'] as List<dynamic>?)
              ?.map((e) =>
                  InstallationDifficulty.fromJson(e as Map<String, dynamic>))
              .toList(),
      tesla_roof_installation_location: (json[
              'tesla_roof_installation_location'] as List<dynamic>?)
          ?.map((e) => InstallationLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      lead_source: (json['lead_source'] as List<dynamic>?)
          ?.map((e) => LeadSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PtPickListsToJson(PtPickLists instance) =>
    <String, dynamic>{
      'utility_company': instance.utility_company,
      'choose_financing': instance.choose_financing,
      'add_a_bridge_loan': instance.add_a_bridge_loan,
      'solar_panels': instance.solar_panels,
      'inverter_type': instance.inverter_type,
      'battery_system': instance.battery_system,
      'tesla_roof_installation_difficulty':
          instance.tesla_roof_installation_difficulty,
      'tesla_roof_installation_location':
          instance.tesla_roof_installation_location,
      'lead_source': instance.lead_source,
    };

PtTables _$PtTablesFromJson(Map<String, dynamic> json) => PtTables(
      pt_lead_source: (json['pt_lead_source'] as List<dynamic>?)
          ?.map((e) => PtLeadSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PtTablesToJson(PtTables instance) => <String, dynamic>{
      'pt_lead_source': instance.pt_lead_source,
    };

PtLeadSource _$PtLeadSourceFromJson(Map<String, dynamic> json) => PtLeadSource(
      rec_id: json['rec_id'] as int?,
      source_name: json['source_name'] as String?,
      start_value: json['start_value'] as String?,
      adder_value: json['adder_value'] as String?,
      uses_formula: json['uses_formula'] as String?,
    );

Map<String, dynamic> _$PtLeadSourceToJson(PtLeadSource instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'source_name': instance.source_name,
      'start_value': instance.start_value,
      'adder_value': instance.adder_value,
      'uses_formula': instance.uses_formula,
    };

UtilityCompany _$UtilityCompanyFromJson(Map<String, dynamic> json) =>
    UtilityCompany(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$UtilityCompanyToJson(UtilityCompany instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

ChooseFinancing _$ChooseFinancingFromJson(Map<String, dynamic> json) =>
    ChooseFinancing(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$ChooseFinancingToJson(ChooseFinancing instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

AddABridgeLoan _$AddABridgeLoanFromJson(Map<String, dynamic> json) =>
    AddABridgeLoan(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$AddABridgeLoanToJson(AddABridgeLoan instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

SolarPanels _$SolarPanelsFromJson(Map<String, dynamic> json) => SolarPanels(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
      data_attribute_watts: json['data_attribute_watts'] as String?,
    );

Map<String, dynamic> _$SolarPanelsToJson(SolarPanels instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
      'data_attribute_watts': instance.data_attribute_watts,
    };

InverterType _$InverterTypeFromJson(Map<String, dynamic> json) => InverterType(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InverterTypeToJson(InverterType instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

BatterySystem _$BatterySystemFromJson(Map<String, dynamic> json) =>
    BatterySystem(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$BatterySystemToJson(BatterySystem instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

ElectricalUpgrades _$ElectricalUpgradesFromJson(Map<String, dynamic> json) =>
    ElectricalUpgrades(
      rec_id: json['rec_id'] as int?,
      electrical_upgrades_work: json['electrical_upgrades_work'] as String?,
      cost: json['cost'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ElectricalUpgradesToJson(ElectricalUpgrades instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'electrical_upgrades_work': instance.electrical_upgrades_work,
      'cost': instance.cost,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

InstallationDifficulty _$InstallationDifficultyFromJson(
        Map<String, dynamic> json) =>
    InstallationDifficulty(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InstallationDifficultyToJson(
        InstallationDifficulty instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

InstallationLocation _$InstallationLocationFromJson(
        Map<String, dynamic> json) =>
    InstallationLocation(
      value: json['value'] as String?,
      default_value: json['default_value'] as int?,
    );

Map<String, dynamic> _$InstallationLocationToJson(
        InstallationLocation instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
    };

LeadSource _$LeadSourceFromJson(Map<String, dynamic> json) => LeadSource(
      value: json['value'] as String?,
      default_value: json['default_value'] as bool?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$LeadSourceToJson(LeadSource instance) =>
    <String, dynamic>{
      'value': instance.value,
      'default_value': instance.default_value,
      'display_value': instance.display_value,
    };
