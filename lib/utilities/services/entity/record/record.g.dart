// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleRecord _$SingleRecordFromJson(Map<String, dynamic> json) => SingleRecord(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorsList: (json['errorsList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SingleRecordToJson(SingleRecord instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'message': instance.message,
      'errorsList': instance.errorsList,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      form: json['form'] == null
          ? null
          : Form.fromJson(json['form'] as Map<String, dynamic>),
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      transitions: (json['transitions'] as List<dynamic>?)
          ?.map((e) => Transitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachments.fromJson(e as Map<String, dynamic>))
          .toList(),
      private_attachments: (json['private_attachments'] as List<dynamic>?)
          ?.map((e) => Attachments.fromJson(e as Map<String, dynamic>))
          .toList(),
      private_notes: (json['private_notes'] as List<dynamic>?)
          ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      designs: (json['designs'] as List<dynamic>?)
          ?.map((e) => DesignsRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      related_records: (json['related_records'] as List<dynamic>?)
          ?.map((e) => RelatedRecords.fromJson(e as Map<String, dynamic>))
          .toList(),
      designsCopy: (json['designsCopy'] as List<dynamic>?)
          ?.map((e) => DesignsRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'form': instance.form,
      'transitions': instance.transitions,
      'notes': instance.notes,
      'private_notes': instance.private_notes,
      'attachments': instance.attachments,
      'private_attachments': instance.private_attachments,
      'designs': instance.designs,
      'designsCopy': instance.designsCopy,
      'related_records': instance.related_records,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      notesEnabled: json['notes_enabled'] as bool?,
      privateNotesEnabled: json['private_notes_enabled'] as bool?,
      attachmentsEnabled: json['attachments_enabled'] as bool?,
      taskEnabled: json['tasks_enabled'] as bool?,
      appointmentsEnabled: json['appointments_enabled'] as bool?,
      sharees: (json['sharees'] as List<dynamic>?)
          ?.map((e) => Sharee.fromJson(e as Map<String, dynamic>))
          .toList(),
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map((e) => Contracts.fromJson(e as Map<String, dynamic>))
          .toList(),
      view: json['view'] as bool?,
      create: json['create'] as bool?,
      edit: json['edit'] as bool?,
      delete: json['delete'] as bool?,
      export_data: json['export_data'] as bool?,
      filter_data: json['filter_data'] as bool?,
      manage_columns: json['manage_columns'] as bool?,
      convert_lead: json['convert_lead'] as bool?,
      view_notes: json['view_notes'] as bool?,
      create_notes: json['create_notes'] as bool?,
      edit_notes: json['edit_notes'] as bool?,
      delete_notes: json['delete_notes'] as bool?,
      view_attachments: json['view_attachments'] as bool?,
      create_attachments: json['create_attachments'] as bool?,
      delete_attachments: json['delete_attachments'] as bool?,
      view_private_notes: json['view_private_notes'] as bool?,
      create_private_notes: json['create_private_notes'] as bool?,
      edit_private_notes: json['edit_private_notes'] as bool?,
      delete_private_notes: json['delete_private_notes'] as bool?,
      share_record: json['share_record'] as bool?,
      can_view_contracts: json['can_view_contracts'] as bool?,
      create_design: json['create_design'] as bool?,
      edit_design: json['edit_design'] as bool?,
      delete_design: json['delete_design'] as bool?,
      share_access_type: json['share_access_type'] as String?,
      pandadoc_api_token: json['pandadoc_api_token'] as String?,
      create_proposals: json['create_proposals'] as bool?,
      previous: json['previous'] as int?,
      next: json['next'] as int?,
      meetings_enabled: json['meetings_enabled'] as bool?,
    )
      ..mentionable_users = (json['mentionable_users'] as List<dynamic>?)
          ?.map((e) => MentionableUsers.fromJson(e as Map<String, dynamic>))
          .toList()
      ..notification_groups = (json['notification_groups'] as List<dynamic>?)
          ?.map((e) => NotificationGroups.fromJson(e as Map<String, dynamic>))
          .toList()
      ..download_attachments = json['download_attachments'] as bool?
      ..view_private_attachments = json['view_private_attachments'] as bool?
      ..create_private_attachments = json['create_private_attachments'] as bool?
      ..delete_private_attachments = json['delete_private_attachments'] as bool?
      ..download_private_attachments =
          json['download_private_attachments'] as bool?
      ..private_attachments_enabled =
          json['private_attachments_enabled'] as bool?;

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'notes_enabled': instance.notesEnabled,
      'private_notes_enabled': instance.privateNotesEnabled,
      'attachments_enabled': instance.attachmentsEnabled,
      'tasks_enabled': instance.taskEnabled,
      'appointments_enabled': instance.appointmentsEnabled,
      'sharees': instance.sharees,
      'mentionable_users': instance.mentionable_users,
      'notification_groups': instance.notification_groups,
      'contracts': instance.contracts,
      'view': instance.view,
      'create': instance.create,
      'edit': instance.edit,
      'delete': instance.delete,
      'export_data': instance.export_data,
      'filter_data': instance.filter_data,
      'manage_columns': instance.manage_columns,
      'convert_lead': instance.convert_lead,
      'view_notes': instance.view_notes,
      'create_notes': instance.create_notes,
      'edit_notes': instance.edit_notes,
      'delete_notes': instance.delete_notes,
      'view_attachments': instance.view_attachments,
      'create_attachments': instance.create_attachments,
      'delete_attachments': instance.delete_attachments,
      'view_private_notes': instance.view_private_notes,
      'create_private_notes': instance.create_private_notes,
      'download_attachments': instance.download_attachments,
      'edit_private_notes': instance.edit_private_notes,
      'delete_private_notes': instance.delete_private_notes,
      'share_record': instance.share_record,
      'can_view_contracts': instance.can_view_contracts,
      'create_design': instance.create_design,
      'edit_design': instance.edit_design,
      'delete_design': instance.delete_design,
      'share_access_type': instance.share_access_type,
      'pandadoc_api_token': instance.pandadoc_api_token,
      'create_proposals': instance.create_proposals,
      'view_private_attachments': instance.view_private_attachments,
      'create_private_attachments': instance.create_private_attachments,
      'delete_private_attachments': instance.delete_private_attachments,
      'download_private_attachments': instance.download_private_attachments,
      'private_attachments_enabled': instance.private_attachments_enabled,
      'previous': instance.previous,
      'next': instance.next,
      'meetings_enabled': instance.meetings_enabled,
    };

Sharee _$ShareeFromJson(Map<String, dynamic> json) => Sharee(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      accessType: json['access_type'] as String?,
    )..check = json['check'] as bool?;

Map<String, dynamic> _$ShareeToJson(Sharee instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'access_type': instance.accessType,
      'check': instance.check,
    };

Contracts _$ContractsFromJson(Map<String, dynamic> json) => Contracts(
      rec_id: json['rec_id'] as int?,
      proposal_status: json['proposal_status'] as String?,
      choose_financing: json['choose_financing'] as String?,
      created_at: json['created_at'] as String?,
      pandadoc_id: json['pandadoc_id'] as String?,
    );

Map<String, dynamic> _$ContractsToJson(Contracts instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'proposal_status': instance.proposal_status,
      'choose_financing': instance.choose_financing,
      'created_at': instance.created_at,
      'pandadoc_id': instance.pandadoc_id,
    };

Form _$FormFromJson(Map<String, dynamic> json) => Form(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormToJson(Form instance) => <String, dynamic>{
      'fields': instance.fields,
      'sections': instance.sections,
    };

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      label: json['label'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      order: json['order'] as int?,
      section: json['section'] as String?,
      minlength: json['minlength'] as int?,
      maxlength: json['maxlength'] as int?,
      readonly: json['readonly'] as bool?,
      hidden: json['hidden'] as bool?,
      required: json['required'] as bool?,
      decimal_places: json['decimal_places'] as int?,
      digits_allowed: json['digits_allowed'] as int?,
      value_list: (json['value_list'] as List<dynamic>?)
          ?.map((e) => ValueList.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    )..required_for_design = json['required_for_design'] as int?;

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'readonly': instance.readonly,
      'hidden': instance.hidden,
      'label': instance.label,
      'order': instance.order,
      'type': instance.type,
      'value': instance.value,
      'section': instance.section,
      'minlength': instance.minlength,
      'maxlength': instance.maxlength,
      'required': instance.required,
      'decimal_places': instance.decimal_places,
      'digits_allowed': instance.digits_allowed,
      'value_list': instance.value_list,
      'required_for_design': instance.required_for_design,
      'id': instance.id,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      hidden: json['hidden'] as bool?,
      label: json['label'] as String?,
      order: json['order'] as int?,
      index: json['index'] as int?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'label': instance.label,
      'order': instance.order,
      'hidden': instance.hidden,
      'index': instance.index,
    };

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      rec_id: json['rec_id'] as int?,
      owner_id: json['owner_id'] as int?,
      content: json['content'] as String?,
      parent_id: json['parent_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      upvote_count: json['upvote_count'] as int?,
      user_has_upvoted: json['user_has_upvoted'] as bool?,
      pings: (json['pings'] as List<dynamic>?)
          ?.map((e) => Pings.fromJson(e as Map<String, dynamic>))
          .toList(),
      like_users_list: (json['like_users_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attachments_notes: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentsNotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: json['note_owner'] == null
          ? null
          : NoteOwner.fromJson(json['note_owner'] as Map<String, dynamic>),
    )..enabledDelete = json['enabledDelete'] as bool?;

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'owner_id': instance.owner_id,
      'content': instance.content,
      'parent_id': instance.parent_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'upvote_count': instance.upvote_count,
      'user_has_upvoted': instance.user_has_upvoted,
      'pings': instance.pings,
      'like_users_list': instance.like_users_list,
      'attachments': instance.attachments_notes,
      'note_owner': instance.owner,
      'enabledDelete': instance.enabledDelete,
    };

Attachments _$AttachmentsFromJson(Map<String, dynamic> json) => Attachments(
      rec_id: json['rec_id'] as int?,
      filename: json['filename'] as String?,
      extension: json['extension'] as String?,
      size: json['size'] as int?,
      mime_type: json['mime_type'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      zoho_attachment_id: json['zoho_attachment_id'] as String?,
      file_path: json['file_path'] as String?,
      preview_url: json['preview_url'] as String?,
      attachment_type: json['attachment_type'] as String?,
      url: json['url'] as String?,
      owner_name: json['owner_name'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
    )..progressDownload = json['progressDownload'] as String?;

Map<String, dynamic> _$AttachmentsToJson(Attachments instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'filename': instance.filename,
      'extension': instance.extension,
      'size': instance.size,
      'mime_type': instance.mime_type,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'zoho_attachment_id': instance.zoho_attachment_id,
      'file_path': instance.file_path,
      'preview_url': instance.preview_url,
      'attachment_type': instance.attachment_type,
      'url': instance.url,
      'owner_name': instance.owner_name,
      'createDate': instance.createDate?.toIso8601String(),
      'progressDownload': instance.progressDownload,
    };

AttachmentsNotes _$AttachmentsNotesFromJson(Map<String, dynamic> json) =>
    AttachmentsNotes(
      rec_id: json['rec_id'] as int?,
      note_id: json['note_id'] as int?,
      filename: json['filename'] as String?,
      extension: json['extension'] as String?,
      size: json['size'] as int?,
      mime_type: json['mime_type'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      zoho_attachment_id: json['zoho_attachment_id'] as String?,
      file_path: json['file_path'] as String?,
      preview_url: json['preview_url'] as String?,
    );

Map<String, dynamic> _$AttachmentsNotesToJson(AttachmentsNotes instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'note_id': instance.note_id,
      'filename': instance.filename,
      'extension': instance.extension,
      'size': instance.size,
      'mime_type': instance.mime_type,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'zoho_attachment_id': instance.zoho_attachment_id,
      'file_path': instance.file_path,
      'preview_url': instance.preview_url,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      rec_id: json['rec_id'] as int?,
      owner_id: json['owner_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'rec_id': instance.rec_id,
      'owner_id': instance.owner_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'avatar': instance.avatar,
    };

NoteOwner _$NoteOwnerFromJson(Map<String, dynamic> json) => NoteOwner(
      owner_id: json['owner_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$NoteOwnerToJson(NoteOwner instance) => <String, dynamic>{
      'owner_id': instance.owner_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'avatar': instance.avatar,
    };

Transitions _$TransitionsFromJson(Map<String, dynamic> json) => Transitions(
      label: json['label'] as String?,
      url: json['url'] as String?,
      rec_id: json['rec_id'] as int?,
    );

Map<String, dynamic> _$TransitionsToJson(Transitions instance) =>
    <String, dynamic>{
      'label': instance.label,
      'url': instance.url,
      'rec_id': instance.rec_id,
    };

ValueList _$ValueListFromJson(Map<String, dynamic> json) => ValueList(
      actual_value: json['actual_value'] as String?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$ValueListToJson(ValueList instance) => <String, dynamic>{
      'actual_value': instance.actual_value,
      'display_value': instance.display_value,
    };

MentionableUsers _$MentionableUsersFromJson(Map<String, dynamic> json) =>
    MentionableUsers(
      id: json['id'] as int?,
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MentionableUsersToJson(MentionableUsers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'email': instance.email,
      'avatar': instance.avatar,
      'type': instance.type,
    };

NotificationGroups _$NotificationGroupsFromJson(Map<String, dynamic> json) =>
    NotificationGroups(
      id: json['id'] as int?,
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      type: json['type'] as String?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$NotificationGroupsToJson(NotificationGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'email': instance.email,
      'avatar': instance.avatar,
      'type': instance.type,
      'users': instance.users,
    };

PrivateNote _$PrivateNoteFromJson(Map<String, dynamic> json) => PrivateNote(
      rec_id: json['rec_id'] as int?,
      owner_id: json['owner_id'] as int?,
      content: json['content'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      parent_id: json['parent_id'] as int?,
      attachmentsNotes: (json['attachments'] as List<dynamic>?)
          ?.map((e) =>
              AttachmentsPrivateNotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    )..enabledDelete = json['enabledDelete'] as bool?;

Map<String, dynamic> _$PrivateNoteToJson(PrivateNote instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'owner_id': instance.owner_id,
      'content': instance.content,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'parent_id': instance.parent_id,
      'attachments': instance.attachmentsNotes,
      'owner': instance.owner,
      'enabledDelete': instance.enabledDelete,
    };

AttachmentsPrivateNotes _$AttachmentsPrivateNotesFromJson(
        Map<String, dynamic> json) =>
    AttachmentsPrivateNotes(
      rec_id: json['rec_id'] as int?,
      note_id: json['note_id'] as int?,
      filename: json['filename'] as String?,
      extension: json['extension'] as String?,
      size: json['size'] as int?,
      mime_type: json['mime_type'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      zoho_attachment_id: json['zoho_attachment_id'] as String?,
      file_path: json['file_path'] as String?,
      preview_url: json['preview_url'] as String?,
    );

Map<String, dynamic> _$AttachmentsPrivateNotesToJson(
        AttachmentsPrivateNotes instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'note_id': instance.note_id,
      'filename': instance.filename,
      'extension': instance.extension,
      'size': instance.size,
      'mime_type': instance.mime_type,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'zoho_attachment_id': instance.zoho_attachment_id,
      'file_path': instance.file_path,
      'preview_url': instance.preview_url,
    };

DesignsRecord _$DesignsRecordFromJson(Map<String, dynamic> json) =>
    DesignsRecord(
      design_id: json['design_id'] as int?,
      annual_usage: json['annual_usage'] as String?,
      panel_count: json['panel_count'] as String?,
      design_proposals: (json['design_proposals'] as List<dynamic>?)
          ?.map((e) => DesignProposals.fromJson(e as Map<String, dynamic>))
          .toList(),
      solar_panels: json['solar_panels'] as String?,
      design_modification_notes: json['design_modification_notes'] as String?,
      roof_quote: json['roof_quote'] as String?,
      design_notes: json['design_notes'] as String?,
      spr_roof_price: json['spr_roof_price'] as String?,
      design_completed: json['design_completed'] as String?,
      tree_removal: json['tree_removal'] as String?,
      tree_removal_notes: json['tree_removal_notes'] as String?,
      system_avg_tsrf: json['system_avg_tsrf'] as String?,
      production_value: json['production_value'] as String?,
      total_solar_arrays: json['total_solar_arrays'] as String?,
      steep_pitch_roof: json['steep_pitch_roof'] as String?,
      flat_roof: json['flat_roof'] as String?,
      metal_roof: json['metal_roof'] as String?,
      ground_mt_rooftop: json['ground_mt_rooftop'] as String?,
      battery_system: json['battery_system'] as String?,
      solar_layout_file_image: json['solar_layout_file_image'] as String?,
      watts: json['watts'] as String?,
      selected: json['selected'] as bool?,
      modifications: json['modifications'] as int?,
      action: json['action'] as String?,
      index: json['index'] as int?,
      files_from_input_fields: (json['files_from_input_fields']
              as List<dynamic>?)
          ?.map((e) => FilesFromInputFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      site_survey_file: json['site_survey_file'] as String?,
      shade_report_file: json['shade_report_file'] as String?,
      design_title: json['design_title'] as String?,
      can_be_deleted: json['can_be_deleted'] as bool?,
    )
      ..wire_run_after_40ft = json['wire_run_after_40ft'] as String?
      ..roof_over_25ft = json['roof_over_25ft'] as String?
      ..trenching_per_ft = json['trenching_per_ft'] as String?
      ..internal_conduit_run = json['internal_conduit_run'] as String?
      ..tree_removal_cost = json['tree_removal_cost'] as String?
      ..permit_fees = json['permit_fees'] as String?
      ..m_to_interconnect = json['m_to_interconnect'] as String?
      ..additional_costs = json['additional_costs'] as String?
      ..safety_railings = json['safety_railings'] as String?
      ..sheathing = json['sheathing'] as String?
      ..estimated_sq_only_tesla_shingles =
          json['estimated_sq_only_tesla_shingles'] as String?
      ..gutters_and_leaders = json['gutters_and_leaders'] as String?
      ..skylights = json['skylights'] as String?
      ..onyx_black_roofing = json['onyx_black_roofing'] as String?;

Map<String, dynamic> _$DesignsRecordToJson(DesignsRecord instance) =>
    <String, dynamic>{
      'can_be_deleted': instance.can_be_deleted,
      'design_id': instance.design_id,
      'annual_usage': instance.annual_usage,
      'panel_count': instance.panel_count,
      'solar_panels': instance.solar_panels,
      'design_modification_notes': instance.design_modification_notes,
      'roof_quote': instance.roof_quote,
      'design_notes': instance.design_notes,
      'spr_roof_price': instance.spr_roof_price,
      'tree_removal': instance.tree_removal,
      'design_completed': instance.design_completed,
      'tree_removal_notes': instance.tree_removal_notes,
      'system_avg_tsrf': instance.system_avg_tsrf,
      'production_value': instance.production_value,
      'total_solar_arrays': instance.total_solar_arrays,
      'steep_pitch_roof': instance.steep_pitch_roof,
      'flat_roof': instance.flat_roof,
      'metal_roof': instance.metal_roof,
      'ground_mt_rooftop': instance.ground_mt_rooftop,
      'battery_system': instance.battery_system,
      'wire_run_after_40ft': instance.wire_run_after_40ft,
      'roof_over_25ft': instance.roof_over_25ft,
      'trenching_per_ft': instance.trenching_per_ft,
      'internal_conduit_run': instance.internal_conduit_run,
      'tree_removal_cost': instance.tree_removal_cost,
      'permit_fees': instance.permit_fees,
      'm_to_interconnect': instance.m_to_interconnect,
      'additional_costs': instance.additional_costs,
      'solar_layout_file_image': instance.solar_layout_file_image,
      'site_survey_file': instance.site_survey_file,
      'shade_report_file': instance.shade_report_file,
      'design_proposals': instance.design_proposals,
      'files_from_input_fields': instance.files_from_input_fields,
      'watts': instance.watts,
      'design_title': instance.design_title,
      'safety_railings': instance.safety_railings,
      'sheathing': instance.sheathing,
      'estimated_sq_only_tesla_shingles':
          instance.estimated_sq_only_tesla_shingles,
      'gutters_and_leaders': instance.gutters_and_leaders,
      'skylights': instance.skylights,
      'onyx_black_roofing': instance.onyx_black_roofing,
      'selected': instance.selected,
      'modifications': instance.modifications,
      'action': instance.action,
      'index': instance.index,
    };

DesignProposals _$DesignProposalsFromJson(Map<String, dynamic> json) =>
    DesignProposals(
      rec_id: json['rec_id'] as int?,
      design_id: json['design_id'] as int?,
      proposal_status: json['proposal_status'] as String?,
      system_size: json['system_size'] as int?,
      system_offset: json['system_offset'] as String?,
      proposal_design_modifications: (json['proposal_design_modifications']
              as List<dynamic>?)
          ?.map((e) =>
              ProposalDesignModifications.fromJson(e as Map<String, dynamic>))
          .toList(),
      solar_panels: json['solar_panels'] as String?,
      amount_of_panels: json['amount_of_panels'] as int?,
      inverter_type: json['inverter_type'] as String?,
      choose_financing: json['choose_financing'] as String?,
      converted_to_proposal: json['converted_to_proposal'] as int?,
      proposal_signed: json['proposal_signed'] as int?,
      converted_to_contract: json['converted_to_contract'] as int?,
      contract_signed: json['contract_signed'] as int?,
      contract_complete: json['contract_complete'] as int?,
    )..viewable = json['viewable'] as bool?;

Map<String, dynamic> _$DesignProposalsToJson(DesignProposals instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'design_id': instance.design_id,
      'proposal_status': instance.proposal_status,
      'system_size': instance.system_size,
      'system_offset': instance.system_offset,
      'solar_panels': instance.solar_panels,
      'amount_of_panels': instance.amount_of_panels,
      'inverter_type': instance.inverter_type,
      'choose_financing': instance.choose_financing,
      'converted_to_proposal': instance.converted_to_proposal,
      'proposal_signed': instance.proposal_signed,
      'converted_to_contract': instance.converted_to_contract,
      'contract_signed': instance.contract_signed,
      'contract_complete': instance.contract_complete,
      'viewable': instance.viewable,
      'proposal_design_modifications': instance.proposal_design_modifications,
    };

ProposalDesignModifications _$ProposalDesignModificationsFromJson(
        Map<String, dynamic> json) =>
    ProposalDesignModifications(
      rec_id: json['rec_id'] as int?,
      user_id: json['user_id'] as int?,
      deal_id: json['deal_id'] as int?,
      design_id: json['design_id'] as int?,
      proposal_id: json['proposal_id'] as int?,
      data_array: json['data_array'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ProposalDesignModificationsToJson(
        ProposalDesignModifications instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'user_id': instance.user_id,
      'deal_id': instance.deal_id,
      'design_id': instance.design_id,
      'proposal_id': instance.proposal_id,
      'data_array': instance.data_array,
    };

FilesFromInputFields _$FilesFromInputFieldsFromJson(
        Map<String, dynamic> json) =>
    FilesFromInputFields(
      filename: json['filename'] as String?,
      field_id: json['field_id'] as String?,
      file: json['file'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$FilesFromInputFieldsToJson(
        FilesFromInputFields instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'field_id': instance.field_id,
      'file': instance.file,
      'action': instance.action,
    };

RelatedRecords _$RelatedRecordsFromJson(Map<String, dynamic> json) =>
    RelatedRecords(
      full_name: json['full_name'] as String?,
      rec_id: json['rec_id'] as int?,
      created_at: json['created_at'] as String?,
      url: json['url'] as String?,
      module_name: json['module_name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$RelatedRecordsToJson(RelatedRecords instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'rec_id': instance.rec_id,
      'created_at': instance.created_at,
      'url': instance.url,
      'module_name': instance.module_name,
      'slug': instance.slug,
    };
