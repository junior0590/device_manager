class PermissionModel<T> {
  String permissionName;
  T permission;

  PermissionModel({
    required this.permissionName,
    required this.permission,
  });
}

class DashboardPermissionModel {}

class RecordPermissionModel {
  bool create;
  bool read;
  bool update;
  bool delete;
  bool share;
  RecordPermissionModel({
    required this.create,
    required this.read,
    required this.update,
    required this.delete,
    required this.share,
  });
}

class NotePermissionModel {
  String type;
  bool create;
  bool view;
  bool edit;
  bool enabled;

  NotePermissionModel({
    required this.type,
    required this.create,
    required this.view,
    required this.edit,
    required this.enabled,
  });
}

class AttachmentPermissionModel {
  String type;
  bool create;
  bool view;
  bool download;
  AttachmentPermissionModel({
    required this.type,
    required this.create,
    required this.view,
    required this.download,
  });
}

class DesignPermissionModel {
  bool create;
  bool update;
  bool delete;
  DesignPermissionModel({
    required this.create,
    required this.update,
    required this.delete,
  });
}
