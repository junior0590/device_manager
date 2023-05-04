import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';

part 'record.g.dart';

@JsonSerializable()
class SingleRecord {
  Data? data;

  Meta? meta;

  int status;

  String? message;

  List<String>? errorsList;

  SingleRecord(
      {required this.status,
      this.data,
      this.meta,
      this.message,
      this.errorsList});

  factory SingleRecord.fromJson(Map<String, dynamic> json) =>
      _$SingleRecordFromJson(json);

  Map<String, dynamic> toJson() => _$SingleRecordToJson(this);
}

@JsonSerializable()
class Data {
  Form? form;

  List<Transitions>? transitions;

  List<Note>? notes = [];

  List<Note>? private_notes = [];

  List<Attachments>? attachments;

  List<Attachments>? private_attachments;

  List<DesignsRecord>? designs;

  List<DesignsRecord>? designsCopy;

  List<RelatedRecords>? related_records = [];

  Data({
    this.form,
    this.notes,
    this.transitions,
    this.attachments,
    this.private_attachments,
    this.private_notes,
    this.designs,
    this.related_records,
    this.designsCopy,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "notes_enabled")
  bool? notesEnabled;

  @JsonKey(name: "private_notes_enabled")
  bool? privateNotesEnabled;

  @JsonKey(name: "attachments_enabled")
  bool? attachmentsEnabled;

  @JsonKey(name: "tasks_enabled")
  bool? taskEnabled;

  @JsonKey(name: "appointments_enabled")
  bool? appointmentsEnabled;

  List<Sharee>? sharees;

  @JsonKey(name: "mentionable_users")
  List<MentionableUsers>? mentionable_users;

  @JsonKey(name: "notification_groups")
  List<NotificationGroups>? notification_groups;

  List<Contracts>? contracts;

  @JsonKey(name: "view")
  bool? view;

  @JsonKey(name: "create")
  bool? create;

  @JsonKey(name: "edit")
  bool? edit;

  @JsonKey(name: "delete")
  bool? delete;

  @JsonKey(name: "export_data")
  bool? export_data;

  @JsonKey(name: "filter_data")
  bool? filter_data;

  @JsonKey(name: "manage_columns")
  bool? manage_columns;

  @JsonKey(name: "convert_lead")
  bool? convert_lead;

  @JsonKey(name: "view_notes")
  bool? view_notes;

  @JsonKey(name: "create_notes")
  bool? create_notes;

  @JsonKey(name: "edit_notes")
  bool? edit_notes;

  @JsonKey(name: "delete_notes")
  bool? delete_notes;

  @JsonKey(name: "view_attachments")
  bool? view_attachments;

  @JsonKey(name: "create_attachments")
  bool? create_attachments;

  @JsonKey(name: "delete_attachments")
  bool? delete_attachments;

  @JsonKey(name: "view_private_notes")
  bool? view_private_notes;

  @JsonKey(name: "create_private_notes")
  bool? create_private_notes;

  @JsonKey(name: "download_attachments")
  bool? download_attachments;

  @JsonKey(name: "edit_private_notes")
  bool? edit_private_notes;

  @JsonKey(name: "delete_private_notes")
  bool? delete_private_notes;

  @JsonKey(name: "share_record")
  bool? share_record;

  @JsonKey(name: "can_view_contracts")
  bool? can_view_contracts;

  @JsonKey(name: "create_design")
  bool? create_design;

  @JsonKey(name: "edit_design")
  bool? edit_design;

  @JsonKey(name: "delete_design")
  bool? delete_design;

  @JsonKey(name: "share_access_type")
  String? share_access_type;

  @JsonKey(name: "pandadoc_api_token")
  String? pandadoc_api_token;

  @JsonKey(name: "create_proposals")
  bool? create_proposals;

  @JsonKey(name: "view_private_attachments")
  bool? view_private_attachments;

  @JsonKey(name: "create_private_attachments")
  bool? create_private_attachments;

  @JsonKey(name: "delete_private_attachments")
  bool? delete_private_attachments;

  @JsonKey(name: "download_private_attachments")
  bool? download_private_attachments;

  @JsonKey(name: "private_attachments_enabled")
  bool? private_attachments_enabled;

  @JsonKey(name: "previous")
  int? previous;

  @JsonKey(name: "next")
  int? next;

  @JsonKey(name: "meetings_enabled")
  bool? meetings_enabled;

  Meta(
      {this.notesEnabled,
      this.privateNotesEnabled,
      this.attachmentsEnabled,
      this.taskEnabled,
      this.appointmentsEnabled,
      this.sharees,
      this.contracts,
      this.view,
      this.create,
      this.edit,
      this.delete,
      this.export_data,
      this.filter_data,
      this.manage_columns,
      this.convert_lead,
      this.view_notes,
      this.create_notes,
      this.edit_notes,
      this.delete_notes,
      this.view_attachments,
      this.create_attachments,
      this.delete_attachments,
      this.view_private_notes,
      this.create_private_notes,
      this.edit_private_notes,
      this.delete_private_notes,
      this.share_record,
      this.can_view_contracts,
      this.create_design,
      this.edit_design,
      this.delete_design,
      this.share_access_type,
      this.pandadoc_api_token,
      this.create_proposals,
      this.previous,
      this.next,
      this.meetings_enabled});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Sharee {
  int? id;

  @JsonKey(name: "full_name")
  String? fullName;

  @JsonKey(name: "access_type")
  String? accessType;

  bool? check;

  Sharee({this.id, this.fullName, this.accessType});

  factory Sharee.fromJson(Map<String, dynamic> json) => _$ShareeFromJson(json);

  Map<String, dynamic> toJson() => _$ShareeToJson(this);
}

@JsonSerializable()
class Contracts {
  int? rec_id;

  @JsonKey(name: "proposal_status")
  String? proposal_status;

  @JsonKey(name: "choose_financing")
  String? choose_financing;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "pandadoc_id")
  String? pandadoc_id;

  Contracts(
      {this.rec_id,
      this.proposal_status,
      this.choose_financing,
      this.created_at,
      this.pandadoc_id});

  factory Contracts.fromJson(Map<String, dynamic> json) =>
      _$ContractsFromJson(json);

  Map<String, dynamic> toJson() => _$ContractsToJson(this);
}

@JsonSerializable()
class Form {
  List<Field>? fields;

  List<Section>? sections;

  Form({this.fields, this.sections});

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);

  Map<String, dynamic> toJson() => _$FormToJson(this);
}

@JsonSerializable()
class Field {
  @JsonKey(name: "readonly")
  bool? readonly;

  @JsonKey(name: "hidden")
  bool? hidden;

  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "order")
  int? order;

  @JsonKey(name: "type")
  String? type;

  @JsonKey(name: "value")
  String? value;

  @JsonKey(name: "section")
  String? section;

  @JsonKey(name: "minlength")
  int? minlength;

  @JsonKey(name: "maxlength")
  int? maxlength;

  @JsonKey(name: "required")
  bool? required;

  @JsonKey(name: "decimal_places")
  int? decimal_places;

  @JsonKey(name: "digits_allowed")
  int? digits_allowed;

  @JsonKey(name: "value_list")
  List<ValueList>? value_list;

  @JsonKey(name: "required_for_design")
  int? required_for_design;

  @JsonKey(name: "id")
  String? id;

  Field(
      {this.label,
      this.type,
      this.value,
      this.order,
      this.section,
      this.minlength,
      this.maxlength,
      this.readonly,
      this.hidden,
      this.required,
      this.decimal_places,
      this.digits_allowed,
      this.value_list,
      this.id});

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

@JsonSerializable()
class Section {
  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "order")
  int? order;

  @JsonKey(name: "hidden")
  bool? hidden;

  int? index;

  Section({this.hidden, this.label, this.order, this.index});

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Note with ChangeNotifier {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "owner_id")
  int? owner_id;

  @JsonKey(name: "content")
  String? content;

  @JsonKey(name: "parent_id")
  int? parent_id;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "updated_at")
  String? updated_at;

  @JsonKey(name: 'upvote_count')
  int? upvote_count;

  @JsonKey(name: 'user_has_upvoted')
  bool? user_has_upvoted;

  @JsonKey(name: 'pings')
  List<Pings>? pings = [];

  @JsonKey(name: 'like_users_list')
  List<String>? like_users_list;

  @JsonKey(name: "attachments")
  List<AttachmentsNotes>? attachments_notes;

  @JsonKey(name: "note_owner")
  NoteOwner? owner;

  bool? enabledDelete = false;

  Note({
    this.rec_id,
    this.owner_id,
    this.content,
    this.parent_id,
    this.created_at,
    this.updated_at,
    this.upvote_count,
    this.user_has_upvoted,
    this.pings,
    this.like_users_list,
    this.attachments_notes,
    this.owner,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);

  //AttachmentNotes

  void addAttachmentNotes(List<AttachmentsNotes?> attachmentNotes) {
    notifyListeners();
  }

  void addAttachmentNote(AttachmentsNotes? attachmentNote) {
    notifyListeners();
  }

  void updateLike(Like newLikes) {}
}

@JsonSerializable()
class Attachments {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "filename")
  String? filename;

  @JsonKey(name: "extension")
  String? extension;

  @JsonKey(name: "size")
  int? size;

  @JsonKey(name: "mime_type")
  String? mime_type;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "updated_at")
  String? updated_at;

  @JsonKey(name: "zoho_attachment_id")
  String? zoho_attachment_id;

  @JsonKey(name: "file_path")
  String? file_path;

  @JsonKey(name: "preview_url")
  String? preview_url;

  @JsonKey(name: "attachment_type")
  String? attachment_type;

  @JsonKey(name: "url")
  String? url;

  @JsonKey(name: "owner_name")
  String? owner_name;

  DateTime? createDate;

  String? progressDownload;

  Attachments(
      {this.rec_id,
      this.filename,
      this.extension,
      this.size,
      this.mime_type,
      this.created_at,
      this.updated_at,
      this.zoho_attachment_id,
      this.file_path,
      this.preview_url,
      this.attachment_type,
      this.url,
      this.owner_name,
      this.createDate});

  factory Attachments.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentsToJson(this);
}

@JsonSerializable()
class AttachmentsNotes with ChangeNotifier {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "note_id")
  int? note_id;

  @JsonKey(name: "filename")
  String? filename;

  @JsonKey(name: "extension")
  String? extension;

  @JsonKey(name: "size")
  int? size;

  @JsonKey(name: "mime_type")
  String? mime_type;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "updated_at")
  String? updated_at;

  @JsonKey(name: "zoho_attachment_id")
  String? zoho_attachment_id;

  @JsonKey(name: "file_path")
  String? file_path;

  @JsonKey(name: "preview_url")
  String? preview_url;

  AttachmentsNotes(
      {this.rec_id,
      this.note_id,
      this.filename,
      this.extension,
      this.size,
      this.mime_type,
      this.created_at,
      this.updated_at,
      this.zoho_attachment_id,
      this.file_path,
      this.preview_url});

  factory AttachmentsNotes.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsNotesFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentsNotesToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "owner_id")
  int? owner_id;

  @JsonKey(name: "first_name")
  String? first_name;

  @JsonKey(name: "last_name")
  String? last_name;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "avatar")
  String? avatar;

  Owner(
      {this.rec_id,
      this.owner_id,
      this.first_name,
      this.last_name,
      this.full_name,
      this.avatar});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class NoteOwner {
  @JsonKey(name: "owner_id")
  int? owner_id;

  @JsonKey(name: "first_name")
  String? first_name;

  @JsonKey(name: "last_name")
  String? last_name;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "avatar")
  String? avatar;

  NoteOwner({
    this.owner_id,
    this.first_name,
    this.last_name,
    this.full_name,
    this.avatar,
  });

  factory NoteOwner.fromJson(Map<String, dynamic> json) =>
      _$NoteOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$NoteOwnerToJson(this);
}

@JsonSerializable()
class Transitions {
  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "url")
  String? url;

  @JsonKey(name: "rec_id")
  int? rec_id;

  Transitions({this.label, this.url, this.rec_id});

  factory Transitions.fromJson(Map<String, dynamic> json) =>
      _$TransitionsFromJson(json);

  Map<String, dynamic> toJson() => _$TransitionsToJson(this);
}

@JsonSerializable()
class ValueList {
  String? actual_value;
  String? display_value;

  ValueList({this.actual_value, this.display_value});

  factory ValueList.fromJson(Map<String, dynamic> json) =>
      _$ValueListFromJson(json);

  Map<String, dynamic> toJson() => _$ValueListToJson(this);
}

@JsonSerializable()
class MentionableUsers {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "email")
  String? email;

  @JsonKey(name: "avatar")
  String? avatar;

  @JsonKey(name: "type")
  String? type;

  MentionableUsers(
      {this.id, this.full_name, this.email, this.avatar, this.type});

  factory MentionableUsers.fromJson(Map<String, dynamic> json) =>
      _$MentionableUsersFromJson(json);

  Map<String, dynamic> toJson() => _$MentionableUsersToJson(this);
}

@JsonSerializable()
class NotificationGroups {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "email")
  String? email;

  @JsonKey(name: "avatar")
  String? avatar;

  @JsonKey(name: "type")
  String? type;

  @JsonKey(name: "users")
  List<String>? users;
  NotificationGroups({
    this.id,
    this.full_name,
    this.email,
    this.avatar,
    this.type,
    this.users,
  });

  factory NotificationGroups.fromJson(Map<String, dynamic> json) =>
      _$NotificationGroupsFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationGroupsToJson(this);
}

@JsonSerializable()
class PrivateNote {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "owner_id")
  int? owner_id;

  @JsonKey(name: "content")
  String? content;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "updated_at")
  String? updated_at;

  @JsonKey(name: "parent_id")
  int? parent_id;

  @JsonKey(name: "attachments")
  List<AttachmentsPrivateNotes>? attachmentsNotes;

  @JsonKey(name: "owner")
  Owner? owner;

  bool? enabledDelete = false;

  PrivateNote({
    this.rec_id,
    this.owner_id,
    this.content,
    this.created_at,
    this.updated_at,
    this.parent_id,
    this.attachmentsNotes,
    this.owner,
  });

  factory PrivateNote.fromJson(Map<String, dynamic> json) =>
      _$PrivateNoteFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateNoteToJson(this);
}

@JsonSerializable()
class AttachmentsPrivateNotes {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "note_id")
  int? note_id;

  @JsonKey(name: "filename")
  String? filename;

  @JsonKey(name: "extension")
  String? extension;

  @JsonKey(name: "size")
  int? size;

  @JsonKey(name: "mime_type")
  String? mime_type;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "updated_at")
  String? updated_at;

  @JsonKey(name: "zoho_attachment_id")
  String? zoho_attachment_id;

  @JsonKey(name: "file_path")
  String? file_path;

  @JsonKey(name: "preview_url")
  String? preview_url;

  AttachmentsPrivateNotes(
      {this.rec_id,
      this.note_id,
      this.filename,
      this.extension,
      this.size,
      this.mime_type,
      this.created_at,
      this.updated_at,
      this.zoho_attachment_id,
      this.file_path,
      this.preview_url});

  factory AttachmentsPrivateNotes.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsPrivateNotesFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentsPrivateNotesToJson(this);
}

@JsonSerializable()
class DesignsRecord {
  bool? can_be_deleted;

  @JsonKey(name: "design_id")
  int? design_id;

  @JsonKey(name: "annual_usage")
  String? annual_usage;

  @JsonKey(name: "panel_count")
  String? panel_count;

  @JsonKey(name: "solar_panels")
  String? solar_panels;

  @JsonKey(name: "design_modification_notes")
  String? design_modification_notes;

  @JsonKey(name: "roof_quote")
  String? roof_quote;

  @JsonKey(name: "design_notes")
  String? design_notes;

  @JsonKey(name: "spr_roof_price")
  String? spr_roof_price;

  @JsonKey(name: "tree_removal")
  String? tree_removal;

  @JsonKey(name: "design_completed")
  String? design_completed;

  @JsonKey(name: "tree_removal_notes")
  String? tree_removal_notes;

  @JsonKey(name: "system_avg_tsrf")
  String? system_avg_tsrf;

  @JsonKey(name: "production_value")
  String? production_value;

  @JsonKey(name: "total_solar_arrays")
  String? total_solar_arrays;

  @JsonKey(name: "steep_pitch_roof")
  String? steep_pitch_roof;

  @JsonKey(name: "flat_roof")
  String? flat_roof;

  @JsonKey(name: "metal_roof")
  String? metal_roof;

  @JsonKey(name: "ground_mt_rooftop")
  String? ground_mt_rooftop;

  @JsonKey(name: "battery_system")
  String? battery_system;

  @JsonKey(name: "wire_run_after_40ft")
  String? wire_run_after_40ft;

  @JsonKey(name: "roof_over_25ft")
  String? roof_over_25ft;

  @JsonKey(name: "trenching_per_ft")
  String? trenching_per_ft;

  @JsonKey(name: "internal_conduit_run")
  String? internal_conduit_run;

  @JsonKey(name: "tree_removal_cost")
  String? tree_removal_cost;

  @JsonKey(name: "permit_fees")
  String? permit_fees;

  @JsonKey(name: "m_to_interconnect")
  String? m_to_interconnect;

  @JsonKey(name: "additional_costs")
  String? additional_costs;

  @JsonKey(name: "solar_layout_file_image")
  String? solar_layout_file_image;

  @JsonKey(name: "site_survey_file")
  String? site_survey_file;

  @JsonKey(name: "shade_report_file")
  String? shade_report_file;

  @JsonKey(name: "design_proposals")
  List<DesignProposals>? design_proposals;

  @JsonKey(name: "files_from_input_fields")
  List<FilesFromInputFields>? files_from_input_fields;

  @JsonKey(name: "watts")
  String? watts;

  @JsonKey(name: "design_title")
  String? design_title;

  @JsonKey(name: "safety_railings")
  String? safety_railings;

  @JsonKey(name: "sheathing")
  String? sheathing;

  @JsonKey(name: "estimated_sq_only_tesla_shingles")
  String? estimated_sq_only_tesla_shingles;

  @JsonKey(name: "gutters_and_leaders")
  String? gutters_and_leaders;

  @JsonKey(name: "skylights")
  String? skylights;

  @JsonKey(name: "onyx_black_roofing")
  String? onyx_black_roofing;

  bool? selected;

  int? modifications = 0;

  String? action;

  int? index;

  DesignsRecord({
    this.design_id,
    this.annual_usage,
    this.panel_count,
    this.design_proposals,
    this.solar_panels,
    this.design_modification_notes,
    this.roof_quote,
    this.design_notes,
    this.spr_roof_price,
    this.design_completed,
    this.tree_removal,
    this.tree_removal_notes,
    this.system_avg_tsrf,
    this.production_value,
    this.total_solar_arrays,
    this.steep_pitch_roof,
    this.flat_roof,
    this.metal_roof,
    this.ground_mt_rooftop,
    this.battery_system,
    this.solar_layout_file_image,
    this.watts,
    this.selected,
    this.modifications,
    this.action,
    this.index,
    this.files_from_input_fields,
    this.site_survey_file,
    this.shade_report_file,
    this.design_title,
    this.can_be_deleted,
  });

  factory DesignsRecord.fromJson(Map<String, dynamic> json) =>
      _$DesignsRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DesignsRecordToJson(this);
}

@JsonSerializable()
class DesignProposals {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "design_id")
  int? design_id;

  @JsonKey(name: "proposal_status")
  String? proposal_status;

  @JsonKey(name: "system_size")
  int? system_size;

  @JsonKey(name: "system_offset")
  String? system_offset;

  @JsonKey(name: "solar_panels")
  String? solar_panels;

  @JsonKey(name: "amount_of_panels")
  int? amount_of_panels;

  @JsonKey(name: "inverter_type")
  String? inverter_type;

  @JsonKey(name: "choose_financing")
  String? choose_financing;

  int? converted_to_proposal;

  int? proposal_signed;

  int? converted_to_contract;

  int? contract_signed;

  int? contract_complete;

  bool? viewable;

  @JsonKey(name: "proposal_design_modifications")
  List<ProposalDesignModifications>? proposal_design_modifications;

  DesignProposals(
      {this.rec_id,
      this.design_id,
      this.proposal_status,
      this.system_size,
      this.system_offset,
      this.proposal_design_modifications,
      this.solar_panels,
      this.amount_of_panels,
      this.inverter_type,
      this.choose_financing,
      this.converted_to_proposal,
      this.proposal_signed,
      this.converted_to_contract,
      this.contract_signed,
      this.contract_complete});

  factory DesignProposals.fromJson(Map<String, dynamic> json) =>
      _$DesignProposalsFromJson(json);

  Map<String, dynamic> toJson() => _$DesignProposalsToJson(this);
}

@JsonSerializable()
class ProposalDesignModifications {
  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "user_id")
  int? user_id;

  @JsonKey(name: "deal_id")
  int? deal_id;

  @JsonKey(name: "design_id")
  int? design_id;

  @JsonKey(name: "proposal_id")
  int? proposal_id;

  @JsonKey(name: "data_array")
  Map? data_array;

  ProposalDesignModifications(
      {this.rec_id,
      this.user_id,
      this.deal_id,
      this.design_id,
      this.proposal_id,
      this.data_array});

  factory ProposalDesignModifications.fromJson(Map<String, dynamic> json) =>
      _$ProposalDesignModificationsFromJson(json);

  Map<String, dynamic> toJson() => _$ProposalDesignModificationsToJson(this);
}

@JsonSerializable()
class FilesFromInputFields {
  @JsonKey(name: "filename")
  String? filename;

  @JsonKey(name: "field_id")
  String? field_id;

  @JsonKey(name: "file")
  String? file;

  @JsonKey(name: "action")
  String? action;

  FilesFromInputFields({this.filename, this.field_id, this.file, this.action});

  factory FilesFromInputFields.fromJson(Map<String, dynamic> json) =>
      _$FilesFromInputFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$FilesFromInputFieldsToJson(this);
}

@JsonSerializable()
class RelatedRecords {
  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "created_at")
  String? created_at;

  @JsonKey(name: "url")
  String? url;

  @JsonKey(name: "module_name")
  String? module_name;

  @JsonKey(name: "slug")
  String? slug;

  RelatedRecords(
      {this.full_name,
      this.rec_id,
      this.created_at,
      this.url,
      this.module_name,
      this.slug});

  factory RelatedRecords.fromJson(Map<String, dynamic> json) =>
      _$RelatedRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedRecordsToJson(this);
}
