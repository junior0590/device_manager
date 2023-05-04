import 'package:flutter/material.dart';

import '../classes/classes.dart';
import '../services/entity/record/record.dart';

class AttachmentsProvider with ChangeNotifier {
  List<Attachments>? attachments = [];
  // List<Attachments>? uploadAttachments = [];
  List<UploadAttachment> uploadAttachments = [];
  // List<FileNameFields> listFullFileName = [];

  ///Sets the attachments from API
  void fetchAttachments(List<Attachments> newAttachments) {
    attachments = List.from(newAttachments);
    notifyListeners();
  }

  ///Adds a new attachment
  void addAttachment(Attachments attachment) {
    attachments!.add(attachment);
    notifyListeners();
  }

  ///Deletes an attachment
  void deleteAttachment(int index) {
    attachments!.removeAt(index);
    notifyListeners();
  }

  ///Updates an attachment based on index
  void updateAttachment(int index, Attachments attachment) {
    attachments!.removeAt(index);
    attachments!.insert(index, attachment);
  }

  ///Adds an attachment to upload
  void addAttachmentToUpload(UploadAttachment uploadAttachment) {
    uploadAttachments.add(uploadAttachment);
    notifyListeners();
  }

  void clearAttachmentsToUpload() {
    uploadAttachments.clear();
    notifyListeners();
  }
}
