// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheat_sheet_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheatSheetEntity _$CheatSheetEntityFromJson(Map<String, dynamic> json) =>
    CheatSheetEntity(
      rec_id: json['rec_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      first_name_2: json['first_name_2'] as String?,
      customer_2_mobile: json['customer_2_mobile'] as String?,
      customer_2_email: json['customer_2_email'] as String?,
      last_name_2: json['last_name_2'] as String?,
      home_phone: json['home_phone'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      email: json['email'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
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
      permit_fee: json['permit_fee'] as String?,
      m_to_interconnect: json['m_to_interconnect'] as String?,
      panel_count: json['panel_count'] as String?,
      annual_usage: json['annual_usage'] as String?,
      solar_layout_file_image: json['solar_layout_file_image'] as String?,
      designer: json['designer'] as String?,
      system_offset: json['system_offset'] as String?,
      system_size: (json['system_size'] as num?)?.toDouble(),
      utility_company: json['utility_company'] as String?,
      price_per_watt: json['price_per_watt'] as String?,
      ppw_contract_price: json['ppw_contract_price'] as String?,
      deal_id: json['deal_id'] as String?,
      production: json['production'] as String?,
      consumption: json['consumption'] as String?,
      ppw_price_option: json['ppw_price_option'] as String?,
      amount_of_panels: json['amount_of_panels'] as String?,
      include_roofing_work: json['include_roofing_work'] as String?,
      include_electrical_work: json['include_electrical_work'] as String?,
      internal_wire_run: json['internal_wire_run'] as String?,
      include_tax_credit_override:
          json['include_tax_credit_override'] as String?,
      design_id: json['design_id'] as String?,
      choose_financing: (json['choose_financing'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      spr_roof_price: json['spr_roof_price'] as String?,
      price_override: json['price_override'] as String?,
      electrical_work_1: (json['electrical_work_1'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      tax_federal: json['tax_federal'] as String?,
      tax_state: json['tax_state'] as String?,
      nyserda_override: json['nyserda_override'] as String?,
      inverter_type: json['inverter_type'] as String?,
      design_data_history: (json['designData'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      sales_rep_commission: (json['sales_rep_commission'] as num?)?.toDouble(),
      min_commission_rate: (json['min_commission_rate'] as num?)?.toDouble(),
      max_commission_rate: (json['max_commission_rate'] as num?)?.toDouble(),
      project_purchase_type: json['project_purchase_type'] as String?,
      lead_source: json['lead_source'] as String?,
      safety_railings: json['safety_railings'] as String?,
      onyx_black_roofing: json['onyx_black_roofing'] as String?,
      selected_roofing_color: json['selected_roofing_color'] as String?,
      skylights: json['skylights'] as String?,
      gutters_and_leaders: json['gutters_and_leaders'] as String?,
      sheathing: json['sheathing'] as String?,
      selected_sheathing: json['selected_sheathing'] as int?,
      selected_gutters_and_leaders:
          json['selected_gutters_and_leaders'] as int?,
      selected_skylights: json['selected_skylights'] as int?,
      tesla_roof_installation_difficulty:
          json['tesla_roof_installation_difficulty'] as String?,
      tesla_roof_installation_location:
          json['tesla_roof_installation_location'] as String?,
      tesla_roof_kw: json['tesla_roof_kw'] as String?,
      tesla_roof_square: json['tesla_roof_square'] as String?,
      bridge_loan_override: json['bridge_loan_override'] as String?,
    );

Map<String, dynamic> _$CheatSheetEntityToJson(CheatSheetEntity instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'first_name_2': instance.first_name_2,
      'last_name_2': instance.last_name_2,
      'customer_2_email': instance.customer_2_email,
      'customer_2_mobile': instance.customer_2_mobile,
      'home_phone': instance.home_phone,
      'mobile_phone': instance.mobile_phone,
      'email': instance.email,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'country': instance.country,
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
      'permit_fee': instance.permit_fee,
      'm_to_interconnect': instance.m_to_interconnect,
      'panel_count': instance.panel_count,
      'annual_usage': instance.annual_usage,
      'solar_layout_file_image': instance.solar_layout_file_image,
      'designer': instance.designer,
      'system_offset': instance.system_offset,
      'system_size': instance.system_size,
      'utility_company': instance.utility_company,
      'price_per_watt': instance.price_per_watt,
      'ppw_contract_price': instance.ppw_contract_price,
      'deal_id': instance.deal_id,
      'production': instance.production,
      'consumption': instance.consumption,
      'ppw_price_option': instance.ppw_price_option,
      'amount_of_panels': instance.amount_of_panels,
      'include_roofing_work': instance.include_roofing_work,
      'include_electrical_work': instance.include_electrical_work,
      'internal_wire_run': instance.internal_wire_run,
      'include_tax_credit_override': instance.include_tax_credit_override,
      'design_id': instance.design_id,
      'spr_roof_price': instance.spr_roof_price,
      'price_override': instance.price_override,
      'electrical_work_1': instance.electrical_work_1,
      'electrical_upgrades': instance.electrical_upgrades,
      'other_work_price': instance.other_work_price,
      'grand_total': instance.grand_total,
      'notes': instance.notes,
      'additional_project_total_price_override':
          instance.additional_project_total_price_override,
      'add_a_bridge_loan': instance.add_a_bridge_loan,
      'down_payment': instance.down_payment,
      'tax_federal': instance.tax_federal,
      'tax_state': instance.tax_state,
      'nyserda_override': instance.nyserda_override,
      'inverter_type': instance.inverter_type,
      'choose_financing': instance.choose_financing,
      'sales_rep_commission': instance.sales_rep_commission,
      'min_commission_rate': instance.min_commission_rate,
      'max_commission_rate': instance.max_commission_rate,
      'project_purchase_type': instance.project_purchase_type,
      'lead_source': instance.lead_source,
      'safety_railings': instance.safety_railings,
      'onyx_black_roofing': instance.onyx_black_roofing,
      'selected_roofing_color': instance.selected_roofing_color,
      'sheathing': instance.sheathing,
      'gutters_and_leaders': instance.gutters_and_leaders,
      'skylights': instance.skylights,
      'selected_sheathing': instance.selected_sheathing,
      'selected_gutters_and_leaders': instance.selected_gutters_and_leaders,
      'selected_skylights': instance.selected_skylights,
      'tesla_roof_installation_difficulty':
          instance.tesla_roof_installation_difficulty,
      'tesla_roof_installation_location':
          instance.tesla_roof_installation_location,
      'tesla_roof_square': instance.tesla_roof_square,
      'tesla_roof_kw': instance.tesla_roof_kw,
      'bridge_loan_override': instance.bridge_loan_override,
      'designData': instance.design_data_history,
    };
