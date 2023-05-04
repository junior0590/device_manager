import 'dart:io';

import '../services/entity/viewable_users/viewable_users_entity.dart';

class FileUpload {
  String? type;
  String? path;
  String? filename;
  File? file;
  List<ViewableUsersData> viewableUserData;
  // List<String>? attachmentAssignee = [];

  FileUpload({
    this.type,
    this.path,
    this.filename,
    this.file,
    required this.viewableUserData,
    // this.attachmentAssignee,
  });
}
