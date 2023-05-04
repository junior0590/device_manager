import 'package:json_annotation/json_annotation.dart';

part 'pseg_form_entity.g.dart';

@JsonSerializable()
class PsegFormEntity {
  int? status;
  PsegFormFields? data;

  PsegFormEntity({this.status, this.data});

  factory PsegFormEntity.fromJson(Map<String, dynamic> json) => _$PsegFormEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PsegFormEntityToJson(this);
}

@JsonSerializable()
class PsegFormFields {
  String? customer;
  String? direction_from_home;
  int? age_of_home;
  String? dwelling_attached_following_surfaces;
  String? following_walls_partially_buffered;
  String? dwelling_has_walls;
  String? dwelling_has_floors;
  int? square_footage;
  int? length;
  int? width;
  int? number_of_conditioned_floors;
  int? average_ceiling_height;
  int? conditioned_volume;
  String? infiltration;
  String? measured;
  String? frame_type;
  bool? with_thermal_break;
  bool? insulated;
  String? glazing;
  bool? storm_windows;
  bool? low_e;
  bool? solar_screen;
  String? attic_roof_insulation_value;
  String? attic_insulation_condition;
  String? attic_roof_ventilation;
  String? exposed_wood_frame_walls;
  String? exposed_masonry_walls;
  String? buffered_walls_all_types;
  String? exposed_floors;
  String? basement_masonry_walls;
  String? crawlspace_masonry_walls;
  String? slab;
  String? existing_thermostat;
  String? control_area;
  int? summer_temperature_weekdays_daytime;
  int? summer_temperature_weekdays_evening;
  int? summer_temperature_weekdays_overnight;
  int? summer_temperature_weekends_daytime;
  int? summer_temperature_weekends_evening;
  int? summer_temperature_weekends_overnight;
  int? winter_temperature_weekdays_daytime;
  int? winter_temperature_weekdays_evening;
  int? winter_temperature_weekdays_overnight;
  int? winter_temperature_weekends_daytime;
  int? winter_temperature_weekends_evening;
  int? winter_temperature_weekends_overnight;
  bool? number_of_people_65_or_over;
  bool? number_of_people_18_64;
  bool? number_of_people_under_18;
  int? number_of_people;
  int? number_of_bedrooms;
  int? number_of_bathrooms;
  String? walk_through_note;
  List<AirConditioningFields>? air_conditioning_list;
  bool? ducts_below_attic_unconditioned;
  bool? ducts_below_attic_conditioned;
  bool? ducts_below_attic_insulation_required;
  int? ducts_below_attic_sq_hours;

  bool? ducts_below_crawl_unconditioned;
  bool? ducts_below_crawl_conditioned;
  bool? ducts_below_crawl_insulation_required;
  int? ducts_below_crawl_sq_hours;

  bool? ducts_below_walls_unconditioned;
  bool? ducts_below_walls_conditioned;
  bool? ducts_below_walls_insulation_required;
  int? ducts_below_walls_sq_hours;

  String? duct_note;
  List<InsulationExteriorWallsSections>? insulationExteriorWallsSections;
  List<InsulationAtticSections>? insulationAtticSections;
  String? baseline_pressure_wrto;
  String? worst_case_pressure_wrto;
  String? pressure_difference;
  String? ambient_co;
  String? combustion_appliance1_location;
  String? combustion_appliance1_type;
  int? combustion_appliance1_btu;
  String? combustion_appliance1_fuel;
  String? combustion_appliance1_detail;
  String? combustion_appliance1_venting;
  String? combustion_appliance1_distribution;
  int? combustion_appliance1_year;

  bool? combustion_appliance1_spillage;
  bool? combustion_appliance1_co_flue;
  int? combustion_appliance1_co_flue_value;
  bool? combustion_appliance1_co_ambient;
  int? combustion_appliance1_co_ambient_value;
  bool? combustion_appliance1_draft;
  double? combustion_appliance1_draft_value;
  int? combustion_appliance1_see;
  int? combustion_appliance1_temp;
  String? combustion_appliance1_note;

  String? combustion_appliance2_location;
  String? combustion_appliance2_type;
  int? combustion_appliance2_btu;
  String? combustion_appliance2_fuel;
  String? combustion_appliance2_detail;
  String? combustion_appliance2_venting;
  String? combustion_appliance2_distribution;
  int? combustion_appliance2_year;

  bool? combustion_appliance2_spillage;
  bool? combustion_appliance2_co_flue;
  int? combustion_appliance2_co_flue_value;
  bool? combustion_appliance2_co_ambient;
  int? combustion_appliance2_co_ambient_value;
  bool? combustion_appliance2_draft;
  double? combustion_appliance2_draft_value;
  int? combustion_appliance2_see;
  int? combustion_appliance2_temp;
  String? combustion_appliance2_note;

  String? dhw_location;
  String? dhw_type;
  int? dhw_btu;
  String? dhw_fuel;
  String? dhw_detail;
  String? dhw_venting;
  String? dhw_distribution;
  int? dhw_year;

  bool? dhw_spillage;
  bool? dhw_co_flue;
  int? dhw_co_flue_value;
  bool? dhw_co_ambient;
  int? dhw_co_ambient_value;
  bool? dhw_draft;
  double? dhw_draft_value;
  int? dhw_see;
  int? dhw_temp;
  String? dhw_note;
  double? dhw_energy_factor;

  String? bathroom_fan1_duct_material;
  bool? bathroom_fan1_vented_outside;
  String? bathroom_fan1_cfm;
  bool? bathroom_fan1_insulation_required;
  int? bathroom_fan1_insulation_sq;
  String? bathroom_fan2_duct_material;
  bool? bathroom_fan2_vented_outside;
  String? bathroom_fan2_cfm;
  bool? bathroom_fan2_insulation_required;
  int? bathroom_fan2_insulation_sq;
  String? oven_fan_duct_material;
  bool? oven_fan_vented_outside;
  String? oven_fan_cfm;
  bool? oven_fan_insulation_required;
  int? oven_fan_insulation_sq;
  String? dryer_duct_material;
  bool? dryer_vented_outside;
  String? dryer_cfm;
  bool? dryer_insulation_required;
  String? dryer_insulation_sq;
  String? mechanical_ventilation_note;
  bool? electrical_wiring_fuses;
  bool? electrical_wiring_circuit_breakers;
  bool? electrical_wiring_knob_tube;
  bool? electrical_wiring_romex;
  bool? electrical_wiring_bx;
  bool? any_rewiring_in_10year;
  int? outdoor_ambient_co;
  int? outdoor_ambient_temp;
  int? indoor_living_area_ambient_co;
  int? indoor_ambient_temp;
  String? fuel;
  int? burners_co1;
  int? burners_co2;
  int? burners_co3;
  int? burners_co4;
  bool? burners_co_pass;
  int? oven_co;
  bool? oven_co_pass;
  int? gas_leak;
  bool? gas_leak_pass;
  String? oven_range_note;
  bool? moisture_conditions_inadequate_venting;
  bool? moisture_conditions_incorrect_venting;
  bool? moisture_conditions_mold;
  bool? moisture_conditions_condensed;
  bool? moisture_conditions_bulk_water;
  bool? other_hs_conditions_iaq;
  bool? other_hs_conditions_electrical;
  bool? other_hs_conditions_structural;
  bool? other_hs_conditions_sewer;
  bool? other_hs_conditions_other;
  bool? pipe_insulation_installed;
  String? pipe_ft;
  bool? inch_1_2;
  bool? inch_3_4;
  bool? dhw_temperature_turned_down;
  int? dhw_temperature_originally;
  int? dhw_temperature_new;
  bool? appliances_replaced_hvac_filter;
  int? appliances_replaced_hvac_filter_quantity;
  bool? appliances_replaced_wall_filter;
  int? appliances_replaced_wall_filter_quantity;
  bool? appliances_cleaned_hvac_filter;
  int? appliances_cleaned_hvac_filter_quantity;
  bool? appliances_cleaned_wall_filter;
  int? appliances_cleaned_wall_filter_quantity;
  int? bas;
  int? initial_blower_door_reading;
  int? blower_door_reading_after_duct;
  int? blower_door_reading_after_air;
  List<LightingFields>? lighting_fields;

  PsegFormFields(
      {this.customer,
      this.direction_from_home,
      this.age_of_home,
      this.dwelling_attached_following_surfaces,
      this.following_walls_partially_buffered,
      this.dwelling_has_walls,
      this.dwelling_has_floors,
      this.square_footage,
      this.length,
      this.width,
      this.number_of_conditioned_floors,
      this.average_ceiling_height,
      this.conditioned_volume,
      this.infiltration,
      this.measured,
      this.frame_type,
      this.with_thermal_break,
      this.insulated,
      this.glazing,
      this.storm_windows,
      this.low_e,
      this.solar_screen,
      this.attic_roof_insulation_value,
      this.attic_insulation_condition,
      this.attic_roof_ventilation,
      this.exposed_wood_frame_walls,
      this.exposed_masonry_walls,
      this.buffered_walls_all_types,
      this.exposed_floors,
      this.basement_masonry_walls,
      this.crawlspace_masonry_walls,
      this.slab,
      this.existing_thermostat,
      this.control_area,
      this.summer_temperature_weekdays_daytime,
      this.summer_temperature_weekdays_evening,
      this.summer_temperature_weekdays_overnight,
      this.summer_temperature_weekends_daytime,
      this.summer_temperature_weekends_evening,
      this.summer_temperature_weekends_overnight,
      this.winter_temperature_weekdays_daytime,
      this.winter_temperature_weekdays_evening,
      this.winter_temperature_weekdays_overnight,
      this.winter_temperature_weekends_daytime,
      this.winter_temperature_weekends_evening,
      this.winter_temperature_weekends_overnight,
      this.number_of_people_65_or_over,
      this.number_of_people_18_64,
      this.number_of_people_under_18,
      this.number_of_people,
      this.number_of_bedrooms,
      this.number_of_bathrooms,
      this.walk_through_note,
      this.air_conditioning_list,
      this.ducts_below_attic_unconditioned,
      this.ducts_below_attic_conditioned,
      this.ducts_below_attic_insulation_required,
      this.ducts_below_attic_sq_hours,
      this.ducts_below_crawl_unconditioned,
      this.ducts_below_crawl_conditioned,
      this.ducts_below_crawl_insulation_required,
      this.ducts_below_crawl_sq_hours,
      this.ducts_below_walls_unconditioned,
      this.ducts_below_walls_conditioned,
      this.ducts_below_walls_insulation_required,
      this.ducts_below_walls_sq_hours,
      this.duct_note,
      this.insulationExteriorWallsSections,
      this.insulationAtticSections,
      this.baseline_pressure_wrto,
      this.worst_case_pressure_wrto,
      this.pressure_difference,
      this.ambient_co,
      this.combustion_appliance1_location,
      this.combustion_appliance1_type,
      this.combustion_appliance1_btu,
      this.combustion_appliance1_fuel,
      this.combustion_appliance1_detail,
      this.combustion_appliance1_venting,
      this.combustion_appliance1_distribution,
      this.combustion_appliance1_year,
      this.combustion_appliance1_spillage,
      this.combustion_appliance1_co_flue,
      this.combustion_appliance1_co_ambient,
      this.combustion_appliance1_co_flue_value,
      this.combustion_appliance1_co_ambient_value,
      this.combustion_appliance1_draft,
      this.combustion_appliance1_draft_value,
      this.combustion_appliance1_see,
      this.combustion_appliance1_temp,
      this.combustion_appliance1_note,
      this.combustion_appliance2_location,
      this.combustion_appliance2_type,
      this.combustion_appliance2_btu,
      this.combustion_appliance2_fuel,
      this.combustion_appliance2_detail,
      this.combustion_appliance2_venting,
      this.combustion_appliance2_distribution,
      this.combustion_appliance2_year,
      this.combustion_appliance2_spillage,
      this.combustion_appliance2_co_flue,
      this.combustion_appliance2_co_ambient,
      this.combustion_appliance2_co_flue_value,
      this.combustion_appliance2_co_ambient_value,
      this.combustion_appliance2_draft,
      this.combustion_appliance2_draft_value,
      this.combustion_appliance2_see,
      this.combustion_appliance2_temp,
      this.combustion_appliance2_note,
      this.dhw_location,
      this.dhw_type,
      this.dhw_btu,
      this.dhw_fuel,
      this.dhw_detail,
      this.dhw_venting,
      this.dhw_distribution,
      this.dhw_year,
        this.dhw_spillage,
        this.dhw_co_flue,
        this.dhw_co_flue_value,
        this.dhw_co_ambient,
        this.dhw_co_ambient_value,
        this.dhw_draft,
        this.dhw_draft_value,
        this.dhw_see,
        this.dhw_temp,
        this.dhw_note,
        this.dhw_energy_factor,
      this.bathroom_fan1_duct_material,
      this.bathroom_fan1_vented_outside,
      this.bathroom_fan1_cfm,
      this.bathroom_fan1_insulation_required,
      this.bathroom_fan1_insulation_sq,
      this.bathroom_fan2_duct_material,
      this.bathroom_fan2_vented_outside,
      this.bathroom_fan2_cfm,
      this.bathroom_fan2_insulation_required,
      this.bathroom_fan2_insulation_sq,
      this.oven_fan_duct_material,
      this.oven_fan_vented_outside,
      this.oven_fan_cfm,
      this.oven_fan_insulation_required,
      this.oven_fan_insulation_sq,
      this.dryer_duct_material,
      this.dryer_vented_outside,
      this.dryer_cfm,
      this.dryer_insulation_required,
      this.dryer_insulation_sq,
      this.mechanical_ventilation_note,
      this.electrical_wiring_fuses,
      this.electrical_wiring_circuit_breakers,
      this.electrical_wiring_knob_tube,
      this.electrical_wiring_romex,
      this.electrical_wiring_bx,
      this.any_rewiring_in_10year,
      this.outdoor_ambient_co,
      this.outdoor_ambient_temp,
      this.indoor_living_area_ambient_co,
      this.indoor_ambient_temp,
      this.fuel,
      this.burners_co1,
      this.burners_co2,
      this.burners_co3,
      this.burners_co4,
      this.burners_co_pass,
      this.oven_co,
      this.oven_co_pass,
      this.gas_leak,
      this.gas_leak_pass,
      this.oven_range_note,
      this.moisture_conditions_inadequate_venting,
      this.moisture_conditions_incorrect_venting,
      this.moisture_conditions_mold,
      this.moisture_conditions_condensed,
      this.moisture_conditions_bulk_water,
      this.other_hs_conditions_iaq,
      this.other_hs_conditions_electrical,
      this.other_hs_conditions_structural,
      this.other_hs_conditions_sewer,
      this.other_hs_conditions_other,
      this.pipe_insulation_installed,
      this.pipe_ft,
      this.inch_1_2,
      this.inch_3_4,
      this.dhw_temperature_turned_down,
      this.dhw_temperature_originally,
      this.dhw_temperature_new,
      this.appliances_replaced_hvac_filter,
      this.appliances_replaced_hvac_filter_quantity,
      this.appliances_replaced_wall_filter,
      this.appliances_replaced_wall_filter_quantity,
      this.appliances_cleaned_hvac_filter,
      this.appliances_cleaned_hvac_filter_quantity,
      this.appliances_cleaned_wall_filter,
      this.appliances_cleaned_wall_filter_quantity,
      this.bas,
      this.initial_blower_door_reading,
      this.blower_door_reading_after_duct,
      this.blower_door_reading_after_air,
      this.lighting_fields});

  factory PsegFormFields.fromJson(Map<String, dynamic> json) => _$PsegFormFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$PsegFormFieldsToJson(this);
}

@JsonSerializable()
class AirConditioningFields {
  int? index;
  String? type;
  int? age;
  int? size_in_btus;
  int? load_percent;
  int? space_percent;
  int? seer;
  String? location_code;

  AirConditioningFields({this.index, this.type, this.age, this.size_in_btus, this.load_percent, this.space_percent, this.seer, this.location_code});

  factory AirConditioningFields.fromJson(Map<String, dynamic> json) => _$AirConditioningFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$AirConditioningFieldsToJson(this);
}

@JsonSerializable()
class InsulationExteriorWallsSections {
  int? index;
  String? existing_value_of_insulation;
  bool? insulation_recommended;
  int? height;
  int? length;
  String? siding_type;
  String? condition_codes_sketch;

  InsulationExteriorWallsSections(
      {this.index, this.existing_value_of_insulation, this.insulation_recommended, this.height, this.length, this.siding_type, this.condition_codes_sketch});

  factory InsulationExteriorWallsSections.fromJson(Map<String, dynamic> json) => _$InsulationExteriorWallsSectionsFromJson(json);

  Map<String, dynamic> toJson() => _$InsulationExteriorWallsSectionsToJson(this);
}

@JsonSerializable()
class InsulationAtticSections {
  int? index;
  String? attic_type_code;
  String? existing_value_of_insulation;
  bool? insulation_recommended;
  int? section_area;
  String? siding_type;
  String? condition_codes_sketch;
  String? bypass_codes_sketch;

  InsulationAtticSections(
      {this.index,
      this.attic_type_code,
      this.existing_value_of_insulation,
      this.insulation_recommended,
      this.section_area,
      this.siding_type,
      this.condition_codes_sketch,
      this.bypass_codes_sketch});

  factory InsulationAtticSections.fromJson(Map<String, dynamic> json) => _$InsulationAtticSectionsFromJson(json);

  Map<String, dynamic> toJson() => _$InsulationAtticSectionsToJson(this);
}

@JsonSerializable()
class LightingFields {
  int? index;
  String? room;
  String? bulbs;
  String? type;
  int? watts;

  LightingFields({this.index, this.room, this.bulbs, this.type, this.watts});

  factory LightingFields.fromJson(Map<String, dynamic> json) => _$LightingFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$LightingFieldsToJson(this);
}
