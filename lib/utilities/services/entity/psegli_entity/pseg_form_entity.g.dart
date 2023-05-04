// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pseg_form_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PsegFormEntity _$PsegFormEntityFromJson(Map<String, dynamic> json) =>
    PsegFormEntity(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : PsegFormFields.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PsegFormEntityToJson(PsegFormEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PsegFormFields _$PsegFormFieldsFromJson(Map<String, dynamic> json) =>
    PsegFormFields(
      customer: json['customer'] as String?,
      direction_from_home: json['direction_from_home'] as String?,
      age_of_home: json['age_of_home'] as int?,
      dwelling_attached_following_surfaces:
          json['dwelling_attached_following_surfaces'] as String?,
      following_walls_partially_buffered:
          json['following_walls_partially_buffered'] as String?,
      dwelling_has_walls: json['dwelling_has_walls'] as String?,
      dwelling_has_floors: json['dwelling_has_floors'] as String?,
      square_footage: json['square_footage'] as int?,
      length: json['length'] as int?,
      width: json['width'] as int?,
      number_of_conditioned_floors:
          json['number_of_conditioned_floors'] as int?,
      average_ceiling_height: json['average_ceiling_height'] as int?,
      conditioned_volume: json['conditioned_volume'] as int?,
      infiltration: json['infiltration'] as String?,
      measured: json['measured'] as String?,
      frame_type: json['frame_type'] as String?,
      with_thermal_break: json['with_thermal_break'] as bool?,
      insulated: json['insulated'] as bool?,
      glazing: json['glazing'] as String?,
      storm_windows: json['storm_windows'] as bool?,
      low_e: json['low_e'] as bool?,
      solar_screen: json['solar_screen'] as bool?,
      attic_roof_insulation_value:
          json['attic_roof_insulation_value'] as String?,
      attic_insulation_condition: json['attic_insulation_condition'] as String?,
      attic_roof_ventilation: json['attic_roof_ventilation'] as String?,
      exposed_wood_frame_walls: json['exposed_wood_frame_walls'] as String?,
      exposed_masonry_walls: json['exposed_masonry_walls'] as String?,
      buffered_walls_all_types: json['buffered_walls_all_types'] as String?,
      exposed_floors: json['exposed_floors'] as String?,
      basement_masonry_walls: json['basement_masonry_walls'] as String?,
      crawlspace_masonry_walls: json['crawlspace_masonry_walls'] as String?,
      slab: json['slab'] as String?,
      existing_thermostat: json['existing_thermostat'] as String?,
      control_area: json['control_area'] as String?,
      summer_temperature_weekdays_daytime:
          json['summer_temperature_weekdays_daytime'] as int?,
      summer_temperature_weekdays_evening:
          json['summer_temperature_weekdays_evening'] as int?,
      summer_temperature_weekdays_overnight:
          json['summer_temperature_weekdays_overnight'] as int?,
      summer_temperature_weekends_daytime:
          json['summer_temperature_weekends_daytime'] as int?,
      summer_temperature_weekends_evening:
          json['summer_temperature_weekends_evening'] as int?,
      summer_temperature_weekends_overnight:
          json['summer_temperature_weekends_overnight'] as int?,
      winter_temperature_weekdays_daytime:
          json['winter_temperature_weekdays_daytime'] as int?,
      winter_temperature_weekdays_evening:
          json['winter_temperature_weekdays_evening'] as int?,
      winter_temperature_weekdays_overnight:
          json['winter_temperature_weekdays_overnight'] as int?,
      winter_temperature_weekends_daytime:
          json['winter_temperature_weekends_daytime'] as int?,
      winter_temperature_weekends_evening:
          json['winter_temperature_weekends_evening'] as int?,
      winter_temperature_weekends_overnight:
          json['winter_temperature_weekends_overnight'] as int?,
      number_of_people_65_or_over: json['number_of_people_65_or_over'] as bool?,
      number_of_people_18_64: json['number_of_people_18_64'] as bool?,
      number_of_people_under_18: json['number_of_people_under_18'] as bool?,
      number_of_people: json['number_of_people'] as int?,
      number_of_bedrooms: json['number_of_bedrooms'] as int?,
      number_of_bathrooms: json['number_of_bathrooms'] as int?,
      walk_through_note: json['walk_through_note'] as String?,
      air_conditioning_list: (json['air_conditioning_list'] as List<dynamic>?)
          ?.map(
              (e) => AirConditioningFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      ducts_below_attic_unconditioned:
          json['ducts_below_attic_unconditioned'] as bool?,
      ducts_below_attic_conditioned:
          json['ducts_below_attic_conditioned'] as bool?,
      ducts_below_attic_insulation_required:
          json['ducts_below_attic_insulation_required'] as bool?,
      ducts_below_attic_sq_hours: json['ducts_below_attic_sq_hours'] as int?,
      ducts_below_crawl_unconditioned:
          json['ducts_below_crawl_unconditioned'] as bool?,
      ducts_below_crawl_conditioned:
          json['ducts_below_crawl_conditioned'] as bool?,
      ducts_below_crawl_insulation_required:
          json['ducts_below_crawl_insulation_required'] as bool?,
      ducts_below_crawl_sq_hours: json['ducts_below_crawl_sq_hours'] as int?,
      ducts_below_walls_unconditioned:
          json['ducts_below_walls_unconditioned'] as bool?,
      ducts_below_walls_conditioned:
          json['ducts_below_walls_conditioned'] as bool?,
      ducts_below_walls_insulation_required:
          json['ducts_below_walls_insulation_required'] as bool?,
      ducts_below_walls_sq_hours: json['ducts_below_walls_sq_hours'] as int?,
      duct_note: json['duct_note'] as String?,
      insulationExteriorWallsSections:
          (json['insulationExteriorWallsSections'] as List<dynamic>?)
              ?.map((e) => InsulationExteriorWallsSections.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      insulationAtticSections:
          (json['insulationAtticSections'] as List<dynamic>?)
              ?.map((e) =>
                  InsulationAtticSections.fromJson(e as Map<String, dynamic>))
              .toList(),
      baseline_pressure_wrto: json['baseline_pressure_wrto'] as String?,
      worst_case_pressure_wrto: json['worst_case_pressure_wrto'] as String?,
      pressure_difference: json['pressure_difference'] as String?,
      ambient_co: json['ambient_co'] as String?,
      combustion_appliance1_location:
          json['combustion_appliance1_location'] as String?,
      combustion_appliance1_type: json['combustion_appliance1_type'] as String?,
      combustion_appliance1_btu: json['combustion_appliance1_btu'] as int?,
      combustion_appliance1_fuel: json['combustion_appliance1_fuel'] as String?,
      combustion_appliance1_detail:
          json['combustion_appliance1_detail'] as String?,
      combustion_appliance1_venting:
          json['combustion_appliance1_venting'] as String?,
      combustion_appliance1_distribution:
          json['combustion_appliance1_distribution'] as String?,
      combustion_appliance1_year: json['combustion_appliance1_year'] as int?,
      combustion_appliance1_spillage:
          json['combustion_appliance1_spillage'] as bool?,
      combustion_appliance1_co_flue:
          json['combustion_appliance1_co_flue'] as bool?,
      combustion_appliance1_co_ambient:
          json['combustion_appliance1_co_ambient'] as bool?,
      combustion_appliance1_co_flue_value:
          json['combustion_appliance1_co_flue_value'] as int?,
      combustion_appliance1_co_ambient_value:
          json['combustion_appliance1_co_ambient_value'] as int?,
      combustion_appliance1_draft: json['combustion_appliance1_draft'] as bool?,
      combustion_appliance1_draft_value:
          (json['combustion_appliance1_draft_value'] as num?)?.toDouble(),
      combustion_appliance1_see: json['combustion_appliance1_see'] as int?,
      combustion_appliance1_temp: json['combustion_appliance1_temp'] as int?,
      combustion_appliance1_note: json['combustion_appliance1_note'] as String?,
      combustion_appliance2_location:
          json['combustion_appliance2_location'] as String?,
      combustion_appliance2_type: json['combustion_appliance2_type'] as String?,
      combustion_appliance2_btu: json['combustion_appliance2_btu'] as int?,
      combustion_appliance2_fuel: json['combustion_appliance2_fuel'] as String?,
      combustion_appliance2_detail:
          json['combustion_appliance2_detail'] as String?,
      combustion_appliance2_venting:
          json['combustion_appliance2_venting'] as String?,
      combustion_appliance2_distribution:
          json['combustion_appliance2_distribution'] as String?,
      combustion_appliance2_year: json['combustion_appliance2_year'] as int?,
      combustion_appliance2_spillage:
          json['combustion_appliance2_spillage'] as bool?,
      combustion_appliance2_co_flue:
          json['combustion_appliance2_co_flue'] as bool?,
      combustion_appliance2_co_ambient:
          json['combustion_appliance2_co_ambient'] as bool?,
      combustion_appliance2_co_flue_value:
          json['combustion_appliance2_co_flue_value'] as int?,
      combustion_appliance2_co_ambient_value:
          json['combustion_appliance2_co_ambient_value'] as int?,
      combustion_appliance2_draft: json['combustion_appliance2_draft'] as bool?,
      combustion_appliance2_draft_value:
          (json['combustion_appliance2_draft_value'] as num?)?.toDouble(),
      combustion_appliance2_see: json['combustion_appliance2_see'] as int?,
      combustion_appliance2_temp: json['combustion_appliance2_temp'] as int?,
      combustion_appliance2_note: json['combustion_appliance2_note'] as String?,
      dhw_location: json['dhw_location'] as String?,
      dhw_type: json['dhw_type'] as String?,
      dhw_btu: json['dhw_btu'] as int?,
      dhw_fuel: json['dhw_fuel'] as String?,
      dhw_detail: json['dhw_detail'] as String?,
      dhw_venting: json['dhw_venting'] as String?,
      dhw_distribution: json['dhw_distribution'] as String?,
      dhw_year: json['dhw_year'] as int?,
      dhw_spillage: json['dhw_spillage'] as bool?,
      dhw_co_flue: json['dhw_co_flue'] as bool?,
      dhw_co_flue_value: json['dhw_co_flue_value'] as int?,
      dhw_co_ambient: json['dhw_co_ambient'] as bool?,
      dhw_co_ambient_value: json['dhw_co_ambient_value'] as int?,
      dhw_draft: json['dhw_draft'] as bool?,
      dhw_draft_value: (json['dhw_draft_value'] as num?)?.toDouble(),
      dhw_see: json['dhw_see'] as int?,
      dhw_temp: json['dhw_temp'] as int?,
      dhw_note: json['dhw_note'] as String?,
      dhw_energy_factor: (json['dhw_energy_factor'] as num?)?.toDouble(),
      bathroom_fan1_duct_material:
          json['bathroom_fan1_duct_material'] as String?,
      bathroom_fan1_vented_outside:
          json['bathroom_fan1_vented_outside'] as bool?,
      bathroom_fan1_cfm: json['bathroom_fan1_cfm'] as String?,
      bathroom_fan1_insulation_required:
          json['bathroom_fan1_insulation_required'] as bool?,
      bathroom_fan1_insulation_sq: json['bathroom_fan1_insulation_sq'] as int?,
      bathroom_fan2_duct_material:
          json['bathroom_fan2_duct_material'] as String?,
      bathroom_fan2_vented_outside:
          json['bathroom_fan2_vented_outside'] as bool?,
      bathroom_fan2_cfm: json['bathroom_fan2_cfm'] as String?,
      bathroom_fan2_insulation_required:
          json['bathroom_fan2_insulation_required'] as bool?,
      bathroom_fan2_insulation_sq: json['bathroom_fan2_insulation_sq'] as int?,
      oven_fan_duct_material: json['oven_fan_duct_material'] as String?,
      oven_fan_vented_outside: json['oven_fan_vented_outside'] as bool?,
      oven_fan_cfm: json['oven_fan_cfm'] as String?,
      oven_fan_insulation_required:
          json['oven_fan_insulation_required'] as bool?,
      oven_fan_insulation_sq: json['oven_fan_insulation_sq'] as int?,
      dryer_duct_material: json['dryer_duct_material'] as String?,
      dryer_vented_outside: json['dryer_vented_outside'] as bool?,
      dryer_cfm: json['dryer_cfm'] as String?,
      dryer_insulation_required: json['dryer_insulation_required'] as bool?,
      dryer_insulation_sq: json['dryer_insulation_sq'] as String?,
      mechanical_ventilation_note:
          json['mechanical_ventilation_note'] as String?,
      electrical_wiring_fuses: json['electrical_wiring_fuses'] as bool?,
      electrical_wiring_circuit_breakers:
          json['electrical_wiring_circuit_breakers'] as bool?,
      electrical_wiring_knob_tube: json['electrical_wiring_knob_tube'] as bool?,
      electrical_wiring_romex: json['electrical_wiring_romex'] as bool?,
      electrical_wiring_bx: json['electrical_wiring_bx'] as bool?,
      any_rewiring_in_10year: json['any_rewiring_in_10year'] as bool?,
      outdoor_ambient_co: json['outdoor_ambient_co'] as int?,
      outdoor_ambient_temp: json['outdoor_ambient_temp'] as int?,
      indoor_living_area_ambient_co:
          json['indoor_living_area_ambient_co'] as int?,
      indoor_ambient_temp: json['indoor_ambient_temp'] as int?,
      fuel: json['fuel'] as String?,
      burners_co1: json['burners_co1'] as int?,
      burners_co2: json['burners_co2'] as int?,
      burners_co3: json['burners_co3'] as int?,
      burners_co4: json['burners_co4'] as int?,
      burners_co_pass: json['burners_co_pass'] as bool?,
      oven_co: json['oven_co'] as int?,
      oven_co_pass: json['oven_co_pass'] as bool?,
      gas_leak: json['gas_leak'] as int?,
      gas_leak_pass: json['gas_leak_pass'] as bool?,
      oven_range_note: json['oven_range_note'] as String?,
      moisture_conditions_inadequate_venting:
          json['moisture_conditions_inadequate_venting'] as bool?,
      moisture_conditions_incorrect_venting:
          json['moisture_conditions_incorrect_venting'] as bool?,
      moisture_conditions_mold: json['moisture_conditions_mold'] as bool?,
      moisture_conditions_condensed:
          json['moisture_conditions_condensed'] as bool?,
      moisture_conditions_bulk_water:
          json['moisture_conditions_bulk_water'] as bool?,
      other_hs_conditions_iaq: json['other_hs_conditions_iaq'] as bool?,
      other_hs_conditions_electrical:
          json['other_hs_conditions_electrical'] as bool?,
      other_hs_conditions_structural:
          json['other_hs_conditions_structural'] as bool?,
      other_hs_conditions_sewer: json['other_hs_conditions_sewer'] as bool?,
      other_hs_conditions_other: json['other_hs_conditions_other'] as bool?,
      pipe_insulation_installed: json['pipe_insulation_installed'] as bool?,
      pipe_ft: json['pipe_ft'] as String?,
      inch_1_2: json['inch_1_2'] as bool?,
      inch_3_4: json['inch_3_4'] as bool?,
      dhw_temperature_turned_down: json['dhw_temperature_turned_down'] as bool?,
      dhw_temperature_originally: json['dhw_temperature_originally'] as int?,
      dhw_temperature_new: json['dhw_temperature_new'] as int?,
      appliances_replaced_hvac_filter:
          json['appliances_replaced_hvac_filter'] as bool?,
      appliances_replaced_hvac_filter_quantity:
          json['appliances_replaced_hvac_filter_quantity'] as int?,
      appliances_replaced_wall_filter:
          json['appliances_replaced_wall_filter'] as bool?,
      appliances_replaced_wall_filter_quantity:
          json['appliances_replaced_wall_filter_quantity'] as int?,
      appliances_cleaned_hvac_filter:
          json['appliances_cleaned_hvac_filter'] as bool?,
      appliances_cleaned_hvac_filter_quantity:
          json['appliances_cleaned_hvac_filter_quantity'] as int?,
      appliances_cleaned_wall_filter:
          json['appliances_cleaned_wall_filter'] as bool?,
      appliances_cleaned_wall_filter_quantity:
          json['appliances_cleaned_wall_filter_quantity'] as int?,
      bas: json['bas'] as int?,
      initial_blower_door_reading: json['initial_blower_door_reading'] as int?,
      blower_door_reading_after_duct:
          json['blower_door_reading_after_duct'] as int?,
      blower_door_reading_after_air:
          json['blower_door_reading_after_air'] as int?,
      lighting_fields: (json['lighting_fields'] as List<dynamic>?)
          ?.map((e) => LightingFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PsegFormFieldsToJson(PsegFormFields instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'direction_from_home': instance.direction_from_home,
      'age_of_home': instance.age_of_home,
      'dwelling_attached_following_surfaces':
          instance.dwelling_attached_following_surfaces,
      'following_walls_partially_buffered':
          instance.following_walls_partially_buffered,
      'dwelling_has_walls': instance.dwelling_has_walls,
      'dwelling_has_floors': instance.dwelling_has_floors,
      'square_footage': instance.square_footage,
      'length': instance.length,
      'width': instance.width,
      'number_of_conditioned_floors': instance.number_of_conditioned_floors,
      'average_ceiling_height': instance.average_ceiling_height,
      'conditioned_volume': instance.conditioned_volume,
      'infiltration': instance.infiltration,
      'measured': instance.measured,
      'frame_type': instance.frame_type,
      'with_thermal_break': instance.with_thermal_break,
      'insulated': instance.insulated,
      'glazing': instance.glazing,
      'storm_windows': instance.storm_windows,
      'low_e': instance.low_e,
      'solar_screen': instance.solar_screen,
      'attic_roof_insulation_value': instance.attic_roof_insulation_value,
      'attic_insulation_condition': instance.attic_insulation_condition,
      'attic_roof_ventilation': instance.attic_roof_ventilation,
      'exposed_wood_frame_walls': instance.exposed_wood_frame_walls,
      'exposed_masonry_walls': instance.exposed_masonry_walls,
      'buffered_walls_all_types': instance.buffered_walls_all_types,
      'exposed_floors': instance.exposed_floors,
      'basement_masonry_walls': instance.basement_masonry_walls,
      'crawlspace_masonry_walls': instance.crawlspace_masonry_walls,
      'slab': instance.slab,
      'existing_thermostat': instance.existing_thermostat,
      'control_area': instance.control_area,
      'summer_temperature_weekdays_daytime':
          instance.summer_temperature_weekdays_daytime,
      'summer_temperature_weekdays_evening':
          instance.summer_temperature_weekdays_evening,
      'summer_temperature_weekdays_overnight':
          instance.summer_temperature_weekdays_overnight,
      'summer_temperature_weekends_daytime':
          instance.summer_temperature_weekends_daytime,
      'summer_temperature_weekends_evening':
          instance.summer_temperature_weekends_evening,
      'summer_temperature_weekends_overnight':
          instance.summer_temperature_weekends_overnight,
      'winter_temperature_weekdays_daytime':
          instance.winter_temperature_weekdays_daytime,
      'winter_temperature_weekdays_evening':
          instance.winter_temperature_weekdays_evening,
      'winter_temperature_weekdays_overnight':
          instance.winter_temperature_weekdays_overnight,
      'winter_temperature_weekends_daytime':
          instance.winter_temperature_weekends_daytime,
      'winter_temperature_weekends_evening':
          instance.winter_temperature_weekends_evening,
      'winter_temperature_weekends_overnight':
          instance.winter_temperature_weekends_overnight,
      'number_of_people_65_or_over': instance.number_of_people_65_or_over,
      'number_of_people_18_64': instance.number_of_people_18_64,
      'number_of_people_under_18': instance.number_of_people_under_18,
      'number_of_people': instance.number_of_people,
      'number_of_bedrooms': instance.number_of_bedrooms,
      'number_of_bathrooms': instance.number_of_bathrooms,
      'walk_through_note': instance.walk_through_note,
      'air_conditioning_list': instance.air_conditioning_list,
      'ducts_below_attic_unconditioned':
          instance.ducts_below_attic_unconditioned,
      'ducts_below_attic_conditioned': instance.ducts_below_attic_conditioned,
      'ducts_below_attic_insulation_required':
          instance.ducts_below_attic_insulation_required,
      'ducts_below_attic_sq_hours': instance.ducts_below_attic_sq_hours,
      'ducts_below_crawl_unconditioned':
          instance.ducts_below_crawl_unconditioned,
      'ducts_below_crawl_conditioned': instance.ducts_below_crawl_conditioned,
      'ducts_below_crawl_insulation_required':
          instance.ducts_below_crawl_insulation_required,
      'ducts_below_crawl_sq_hours': instance.ducts_below_crawl_sq_hours,
      'ducts_below_walls_unconditioned':
          instance.ducts_below_walls_unconditioned,
      'ducts_below_walls_conditioned': instance.ducts_below_walls_conditioned,
      'ducts_below_walls_insulation_required':
          instance.ducts_below_walls_insulation_required,
      'ducts_below_walls_sq_hours': instance.ducts_below_walls_sq_hours,
      'duct_note': instance.duct_note,
      'insulationExteriorWallsSections':
          instance.insulationExteriorWallsSections,
      'insulationAtticSections': instance.insulationAtticSections,
      'baseline_pressure_wrto': instance.baseline_pressure_wrto,
      'worst_case_pressure_wrto': instance.worst_case_pressure_wrto,
      'pressure_difference': instance.pressure_difference,
      'ambient_co': instance.ambient_co,
      'combustion_appliance1_location': instance.combustion_appliance1_location,
      'combustion_appliance1_type': instance.combustion_appliance1_type,
      'combustion_appliance1_btu': instance.combustion_appliance1_btu,
      'combustion_appliance1_fuel': instance.combustion_appliance1_fuel,
      'combustion_appliance1_detail': instance.combustion_appliance1_detail,
      'combustion_appliance1_venting': instance.combustion_appliance1_venting,
      'combustion_appliance1_distribution':
          instance.combustion_appliance1_distribution,
      'combustion_appliance1_year': instance.combustion_appliance1_year,
      'combustion_appliance1_spillage': instance.combustion_appliance1_spillage,
      'combustion_appliance1_co_flue': instance.combustion_appliance1_co_flue,
      'combustion_appliance1_co_flue_value':
          instance.combustion_appliance1_co_flue_value,
      'combustion_appliance1_co_ambient':
          instance.combustion_appliance1_co_ambient,
      'combustion_appliance1_co_ambient_value':
          instance.combustion_appliance1_co_ambient_value,
      'combustion_appliance1_draft': instance.combustion_appliance1_draft,
      'combustion_appliance1_draft_value':
          instance.combustion_appliance1_draft_value,
      'combustion_appliance1_see': instance.combustion_appliance1_see,
      'combustion_appliance1_temp': instance.combustion_appliance1_temp,
      'combustion_appliance1_note': instance.combustion_appliance1_note,
      'combustion_appliance2_location': instance.combustion_appliance2_location,
      'combustion_appliance2_type': instance.combustion_appliance2_type,
      'combustion_appliance2_btu': instance.combustion_appliance2_btu,
      'combustion_appliance2_fuel': instance.combustion_appliance2_fuel,
      'combustion_appliance2_detail': instance.combustion_appliance2_detail,
      'combustion_appliance2_venting': instance.combustion_appliance2_venting,
      'combustion_appliance2_distribution':
          instance.combustion_appliance2_distribution,
      'combustion_appliance2_year': instance.combustion_appliance2_year,
      'combustion_appliance2_spillage': instance.combustion_appliance2_spillage,
      'combustion_appliance2_co_flue': instance.combustion_appliance2_co_flue,
      'combustion_appliance2_co_flue_value':
          instance.combustion_appliance2_co_flue_value,
      'combustion_appliance2_co_ambient':
          instance.combustion_appliance2_co_ambient,
      'combustion_appliance2_co_ambient_value':
          instance.combustion_appliance2_co_ambient_value,
      'combustion_appliance2_draft': instance.combustion_appliance2_draft,
      'combustion_appliance2_draft_value':
          instance.combustion_appliance2_draft_value,
      'combustion_appliance2_see': instance.combustion_appliance2_see,
      'combustion_appliance2_temp': instance.combustion_appliance2_temp,
      'combustion_appliance2_note': instance.combustion_appliance2_note,
      'dhw_location': instance.dhw_location,
      'dhw_type': instance.dhw_type,
      'dhw_btu': instance.dhw_btu,
      'dhw_fuel': instance.dhw_fuel,
      'dhw_detail': instance.dhw_detail,
      'dhw_venting': instance.dhw_venting,
      'dhw_distribution': instance.dhw_distribution,
      'dhw_year': instance.dhw_year,
      'dhw_spillage': instance.dhw_spillage,
      'dhw_co_flue': instance.dhw_co_flue,
      'dhw_co_flue_value': instance.dhw_co_flue_value,
      'dhw_co_ambient': instance.dhw_co_ambient,
      'dhw_co_ambient_value': instance.dhw_co_ambient_value,
      'dhw_draft': instance.dhw_draft,
      'dhw_draft_value': instance.dhw_draft_value,
      'dhw_see': instance.dhw_see,
      'dhw_temp': instance.dhw_temp,
      'dhw_note': instance.dhw_note,
      'dhw_energy_factor': instance.dhw_energy_factor,
      'bathroom_fan1_duct_material': instance.bathroom_fan1_duct_material,
      'bathroom_fan1_vented_outside': instance.bathroom_fan1_vented_outside,
      'bathroom_fan1_cfm': instance.bathroom_fan1_cfm,
      'bathroom_fan1_insulation_required':
          instance.bathroom_fan1_insulation_required,
      'bathroom_fan1_insulation_sq': instance.bathroom_fan1_insulation_sq,
      'bathroom_fan2_duct_material': instance.bathroom_fan2_duct_material,
      'bathroom_fan2_vented_outside': instance.bathroom_fan2_vented_outside,
      'bathroom_fan2_cfm': instance.bathroom_fan2_cfm,
      'bathroom_fan2_insulation_required':
          instance.bathroom_fan2_insulation_required,
      'bathroom_fan2_insulation_sq': instance.bathroom_fan2_insulation_sq,
      'oven_fan_duct_material': instance.oven_fan_duct_material,
      'oven_fan_vented_outside': instance.oven_fan_vented_outside,
      'oven_fan_cfm': instance.oven_fan_cfm,
      'oven_fan_insulation_required': instance.oven_fan_insulation_required,
      'oven_fan_insulation_sq': instance.oven_fan_insulation_sq,
      'dryer_duct_material': instance.dryer_duct_material,
      'dryer_vented_outside': instance.dryer_vented_outside,
      'dryer_cfm': instance.dryer_cfm,
      'dryer_insulation_required': instance.dryer_insulation_required,
      'dryer_insulation_sq': instance.dryer_insulation_sq,
      'mechanical_ventilation_note': instance.mechanical_ventilation_note,
      'electrical_wiring_fuses': instance.electrical_wiring_fuses,
      'electrical_wiring_circuit_breakers':
          instance.electrical_wiring_circuit_breakers,
      'electrical_wiring_knob_tube': instance.electrical_wiring_knob_tube,
      'electrical_wiring_romex': instance.electrical_wiring_romex,
      'electrical_wiring_bx': instance.electrical_wiring_bx,
      'any_rewiring_in_10year': instance.any_rewiring_in_10year,
      'outdoor_ambient_co': instance.outdoor_ambient_co,
      'outdoor_ambient_temp': instance.outdoor_ambient_temp,
      'indoor_living_area_ambient_co': instance.indoor_living_area_ambient_co,
      'indoor_ambient_temp': instance.indoor_ambient_temp,
      'fuel': instance.fuel,
      'burners_co1': instance.burners_co1,
      'burners_co2': instance.burners_co2,
      'burners_co3': instance.burners_co3,
      'burners_co4': instance.burners_co4,
      'burners_co_pass': instance.burners_co_pass,
      'oven_co': instance.oven_co,
      'oven_co_pass': instance.oven_co_pass,
      'gas_leak': instance.gas_leak,
      'gas_leak_pass': instance.gas_leak_pass,
      'oven_range_note': instance.oven_range_note,
      'moisture_conditions_inadequate_venting':
          instance.moisture_conditions_inadequate_venting,
      'moisture_conditions_incorrect_venting':
          instance.moisture_conditions_incorrect_venting,
      'moisture_conditions_mold': instance.moisture_conditions_mold,
      'moisture_conditions_condensed': instance.moisture_conditions_condensed,
      'moisture_conditions_bulk_water': instance.moisture_conditions_bulk_water,
      'other_hs_conditions_iaq': instance.other_hs_conditions_iaq,
      'other_hs_conditions_electrical': instance.other_hs_conditions_electrical,
      'other_hs_conditions_structural': instance.other_hs_conditions_structural,
      'other_hs_conditions_sewer': instance.other_hs_conditions_sewer,
      'other_hs_conditions_other': instance.other_hs_conditions_other,
      'pipe_insulation_installed': instance.pipe_insulation_installed,
      'pipe_ft': instance.pipe_ft,
      'inch_1_2': instance.inch_1_2,
      'inch_3_4': instance.inch_3_4,
      'dhw_temperature_turned_down': instance.dhw_temperature_turned_down,
      'dhw_temperature_originally': instance.dhw_temperature_originally,
      'dhw_temperature_new': instance.dhw_temperature_new,
      'appliances_replaced_hvac_filter':
          instance.appliances_replaced_hvac_filter,
      'appliances_replaced_hvac_filter_quantity':
          instance.appliances_replaced_hvac_filter_quantity,
      'appliances_replaced_wall_filter':
          instance.appliances_replaced_wall_filter,
      'appliances_replaced_wall_filter_quantity':
          instance.appliances_replaced_wall_filter_quantity,
      'appliances_cleaned_hvac_filter': instance.appliances_cleaned_hvac_filter,
      'appliances_cleaned_hvac_filter_quantity':
          instance.appliances_cleaned_hvac_filter_quantity,
      'appliances_cleaned_wall_filter': instance.appliances_cleaned_wall_filter,
      'appliances_cleaned_wall_filter_quantity':
          instance.appliances_cleaned_wall_filter_quantity,
      'bas': instance.bas,
      'initial_blower_door_reading': instance.initial_blower_door_reading,
      'blower_door_reading_after_duct': instance.blower_door_reading_after_duct,
      'blower_door_reading_after_air': instance.blower_door_reading_after_air,
      'lighting_fields': instance.lighting_fields,
    };

AirConditioningFields _$AirConditioningFieldsFromJson(
        Map<String, dynamic> json) =>
    AirConditioningFields(
      index: json['index'] as int?,
      type: json['type'] as String?,
      age: json['age'] as int?,
      size_in_btus: json['size_in_btus'] as int?,
      load_percent: json['load_percent'] as int?,
      space_percent: json['space_percent'] as int?,
      seer: json['seer'] as int?,
      location_code: json['location_code'] as String?,
    );

Map<String, dynamic> _$AirConditioningFieldsToJson(
        AirConditioningFields instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': instance.type,
      'age': instance.age,
      'size_in_btus': instance.size_in_btus,
      'load_percent': instance.load_percent,
      'space_percent': instance.space_percent,
      'seer': instance.seer,
      'location_code': instance.location_code,
    };

InsulationExteriorWallsSections _$InsulationExteriorWallsSectionsFromJson(
        Map<String, dynamic> json) =>
    InsulationExteriorWallsSections(
      index: json['index'] as int?,
      existing_value_of_insulation:
          json['existing_value_of_insulation'] as String?,
      insulation_recommended: json['insulation_recommended'] as bool?,
      height: json['height'] as int?,
      length: json['length'] as int?,
      siding_type: json['siding_type'] as String?,
      condition_codes_sketch: json['condition_codes_sketch'] as String?,
    );

Map<String, dynamic> _$InsulationExteriorWallsSectionsToJson(
        InsulationExteriorWallsSections instance) =>
    <String, dynamic>{
      'index': instance.index,
      'existing_value_of_insulation': instance.existing_value_of_insulation,
      'insulation_recommended': instance.insulation_recommended,
      'height': instance.height,
      'length': instance.length,
      'siding_type': instance.siding_type,
      'condition_codes_sketch': instance.condition_codes_sketch,
    };

InsulationAtticSections _$InsulationAtticSectionsFromJson(
        Map<String, dynamic> json) =>
    InsulationAtticSections(
      index: json['index'] as int?,
      attic_type_code: json['attic_type_code'] as String?,
      existing_value_of_insulation:
          json['existing_value_of_insulation'] as String?,
      insulation_recommended: json['insulation_recommended'] as bool?,
      section_area: json['section_area'] as int?,
      siding_type: json['siding_type'] as String?,
      condition_codes_sketch: json['condition_codes_sketch'] as String?,
      bypass_codes_sketch: json['bypass_codes_sketch'] as String?,
    );

Map<String, dynamic> _$InsulationAtticSectionsToJson(
        InsulationAtticSections instance) =>
    <String, dynamic>{
      'index': instance.index,
      'attic_type_code': instance.attic_type_code,
      'existing_value_of_insulation': instance.existing_value_of_insulation,
      'insulation_recommended': instance.insulation_recommended,
      'section_area': instance.section_area,
      'siding_type': instance.siding_type,
      'condition_codes_sketch': instance.condition_codes_sketch,
      'bypass_codes_sketch': instance.bypass_codes_sketch,
    };

LightingFields _$LightingFieldsFromJson(Map<String, dynamic> json) =>
    LightingFields(
      index: json['index'] as int?,
      room: json['room'] as String?,
      bulbs: json['bulbs'] as String?,
      type: json['type'] as String?,
      watts: json['watts'] as int?,
    );

Map<String, dynamic> _$LightingFieldsToJson(LightingFields instance) =>
    <String, dynamic>{
      'index': instance.index,
      'room': instance.room,
      'bulbs': instance.bulbs,
      'type': instance.type,
      'watts': instance.watts,
    };
