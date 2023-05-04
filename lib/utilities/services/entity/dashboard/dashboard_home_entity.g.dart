// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_home_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardHomeEntity _$DashboardHomeEntityFromJson(Map<String, dynamic> json) =>
    DashboardHomeEntity(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : ReportData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DashboardHomeEntityToJson(
        DashboardHomeEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ReportData _$ReportDataFromJson(Map<String, dynamic> json) => ReportData(
      profile: json['profile'] == null
          ? null
          : ProfileDashboard.fromJson(json['profile'] as Map<String, dynamic>),
      viewable_modules: (json['viewable_modules'] as List<dynamic>?)
          ?.map((e) => ViewableModules.fromJson(e as Map<String, dynamic>))
          .toList(),
      proposal_total: json['proposal_total'] as int?,
      contract_total: json['contract_total'] as int?,
    );

Map<String, dynamic> _$ReportDataToJson(ReportData instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'viewable_modules': instance.viewable_modules,
      'proposal_total': instance.proposal_total,
      'contract_total': instance.contract_total,
    };

ProfileDashboard _$ProfileDashboardFromJson(Map<String, dynamic> json) =>
    ProfileDashboard(
      rec_id: json['rec_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      gender: json['gender'] as String?,
      home_phone: json['home_phone'] as String?,
      mobile_phone: json['mobile_phone'] as String?,
      personal_email: json['personal_email'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as int?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ProfileDashboardToJson(ProfileDashboard instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'gender': instance.gender,
      'home_phone': instance.home_phone,
      'mobile_phone': instance.mobile_phone,
      'personal_email': instance.personal_email,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'avatar': instance.avatar,
    };

ViewableModules _$ViewableModulesFromJson(Map<String, dynamic> json) =>
    ViewableModules(
      rec_id: json['rec_id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      label: json['label'] as String?,
      status: json['status'] as String?,
      module_total: json['module_total'] as int?,
    );

Map<String, dynamic> _$ViewableModulesToJson(ViewableModules instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'slug': instance.slug,
      'name': instance.name,
      'label': instance.label,
      'status': instance.status,
      'module_total': instance.module_total,
    };
