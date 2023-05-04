// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Design _$DesignFromJson(Map<String, dynamic> json) => Design(
      design: json['design'] == null
          ? null
          : DesignRequest.fromJson(json['design'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DesignToJson(Design instance) => <String, dynamic>{
      'design': instance.design,
    };

DesignRequest _$DesignRequestFromJson(Map<String, dynamic> json) =>
    DesignRequest(
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
      system_size: json['system_size'] as int?,
      include_roofing: json['include_roofing'] as bool?,
      include_electrical_work: json['include_electrical_work'] as bool?,
      production: json['production'] as String?,
      utility_company: json['utility_company'] as String?,
      internal_wire_run: json['internal_wire_run'] as bool?,
      tax_credit_override: json['tax_credit_override'] as bool?,
      hytech_quoted_price: json['hytech_quoted_price'] as String?,
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
      sales_rep_commission: (json['sales_rep_commission'] as num?)?.toDouble(),
      min_commission_rate: (json['min_commission_rate'] as num?)?.toDouble(),
      max_commission_rate: (json['max_commission_rate'] as num?)?.toDouble(),
      filesFromInputFields: (json['filesFromInputFields'] as List<dynamic>?)
          ?.map((e) =>
              FilesFromInputFieldsDesign.fromJson(e as Map<String, dynamic>))
          .toList(),
      action: json['action'] as String?,
      index: json['index'] as int?,
    );

Map<String, dynamic> _$DesignRequestToJson(DesignRequest instance) =>
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
      'hytech_quoted_price': instance.hytech_quoted_price,
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
      'index': instance.index,
      'action': instance.action,
      'filesFromInputFields': instance.filesFromInputFields,
    };

FilesFromInputFieldsDesign _$FilesFromInputFieldsDesignFromJson(
        Map<String, dynamic> json) =>
    FilesFromInputFieldsDesign(
      filename: json['filename'] as String?,
      field_id: json['field_id'] as String?,
      file: json['file'] as String?,
      action: json['action'] as String?,
      design_id: json['design_id'] as String?,
    );

Map<String, dynamic> _$FilesFromInputFieldsDesignToJson(
        FilesFromInputFieldsDesign instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'field_id': instance.field_id,
      'file': instance.file,
      'action': instance.action,
      'design_id': instance.design_id,
    };
