import 'package:flutter/foundation.dart';
import 'package:project/utilities/classes/permission_model.dart';

class MetaProvider with ChangeNotifier {
  // List<PermissionModel>? permissions = [];
  late RecordPermissionModel record;
  List<NotePermissionModel> note = [];
  List<AttachmentPermissionModel> attachment = [];
  late DesignPermissionModel design;

  String viewNote = '';
  String viewAttachment = '';
  Map<String, dynamic>? _permissions;

  void addRecordPermission(RecordPermissionModel setRecord) {
    record = setRecord;
    notifyListeners();
  }

  void addNotePermission(NotePermissionModel setNote) {
    note.add(setNote);
    notifyListeners();
  }

  void addAttachmentPermission(AttachmentPermissionModel setAttachment) {
    attachment.add(setAttachment);
    notifyListeners();
  }

  void addDesignPermission(DesignPermissionModel setDesign) {
    design = setDesign;
    notifyListeners();
  }

  NotePermissionModel getNotePermission(String type) {
    return note.firstWhere((element) => element.type == type);
  }

  RecordPermissionModel getRecordPermission() {
    return record;
  }

  AttachmentPermissionModel getAttachmentPermission(String type) {
    return attachment.firstWhere((element) => element.type == type);
  }

  getOnePermission(String key) {
    if (_permissions!.containsKey(key)) {
      return _permissions![key];
    }
  }

  setPermissions(Map<String, dynamic>? newPermissions) {
    if (newPermissions!.isNotEmpty) {
      _permissions = newPermissions;
    }
  }

  clearPermissions() {
    note.clear();
    attachment.clear();
    viewNote = '';
    viewAttachment = '';
  }
}
