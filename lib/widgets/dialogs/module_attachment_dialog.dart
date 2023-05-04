import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/utilities/helpers/globaldata.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../utilities/classes/FileNameFields.dart';
import '../../utilities/classes/FileUpload.dart';
import '../../utilities/constants.dart';

class ModuleAttachmentDialog extends StatefulWidget {
  const ModuleAttachmentDialog({Key? key}) : super(key: key);

  @override
  State<ModuleAttachmentDialog> createState() => _ModuleAttachmentDialogState();
}

class _ModuleAttachmentDialogState extends State<ModuleAttachmentDialog> {
  double width = 0;
  List<File> fileList = [];
  List<FileUpload> listFilesUpload = [];
  List<Widget> thumbnailList = [];
  List<FileNameFields> listFileName = [];
  List<FileNameFields> listFullFileName = [];
  FileNameFields fileNameFields = FileNameFields();
  late TextEditingController urlController = TextEditingController();
  int countList = -1;

  @override
  Widget build(BuildContext context) {
    return Container();
    // return _openPopupAttachments(context);
  }

  Future<bool> _openPopupAddUrl(context) async {
    return Alert(
      padding: EdgeInsets.zero,
      context: context,
      style: alertStyle,
      title: "Enter the link",
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 130,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Container(
              margin: EdgeInsets.zero,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.link,
                            size: 30,
                            color: Color(0xFF141414),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                            height: 40,
                            margin:
                                EdgeInsets.only(right: 10, bottom: 5, top: 15),
                            child: TextFormField(
                              controller: urlController,
                              keyboardType: TextInputType.text,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: font,
                                fontSize: 16,
                              ),
                              cursorColor: Color.fromARGB(255, 16, 251, 6),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF282828),
                                focusColor: Color(0xFF282828),
                                contentPadding: EdgeInsets.all(5),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(192, 196, 192, 1),
                                      width: 1.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 16, 251, 6),
                                        width: 1.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          icon: Icon(
                            Icons.paste,
                            color: Color(0xFFEFEFEF),
                          ),
                          label: Text(
                            'Paste',
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                            ),
                          ),
                          onPressed: () async {
                            FlutterClipboard.paste().then((value) {
                              setState(() {
                                urlController.text = value;
                              });
                            });
                          },
                        ),
                        TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          icon: Icon(
                            Icons.content_copy,
                            color: Color(0xFFEFEFEF),
                          ),
                          label: Text(
                            'Copy',
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                            ),
                          ),
                          onPressed: () async {
                            FlutterClipboard.copy(urlController.text)
                                .then((value) => print('copied'));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(greenColor),
                ),
                child: Text(
                  'CANCEL',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(greenColor),
                ),
                child: Text(
                  'ADD',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                onPressed: () async {
                  setState(() {
                    FileUpload fileUpload = FileUpload(viewableUserData: []);
                    fileUpload.path = urlController.text;
                    fileUpload.type = 'url';
                    fileUpload.filename = '';
                    listFilesUpload.add(fileUpload);
                    countList++;

                    fileNameFields = FileNameFields();
                    fileNameFields.indexField = countList;
                    fileNameFields.value = urlController.text;
                    fileNameFields.extension = "url";
                    fileNameFields.fileType = "url";
                    listFullFileName.add(fileNameFields);

                    updateListAttach();
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    ).show().then((value) {
      return true;
    });
  }

  Future<void> _openPopupAttachments(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Dialog(
            backgroundColor: Color(0xFF353535),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: SingleChildScrollView(
              child: Container(
                width: width > 450 ? 500 : 400,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Color(0xFF353535),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.photo,
                                      size: 35,
                                      color: greyColor2,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Add Image',
                                      style: TextStyle(
                                          color: greyColor2, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () async {
                                final ImagePicker _picker = ImagePicker();
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.gallery);
                                String extension = "";
                                if (image != null) {
                                  extension = image.name.split('.').last;
                                  FileUpload fileUpload =
                                      FileUpload(viewableUserData: []);
                                  File file = File(image.path.toString());
                                  fileList.add(file);
                                  countList++;
                                  fileUpload = FileUpload(viewableUserData: []);
                                  fileUpload.path = image.path.toString();
                                  fileUpload.type = 'file';
                                  fileUpload.file = file;
                                  listFilesUpload.add(fileUpload);

                                  setState(() {
                                    fileNameFields = FileNameFields();
                                    fileNameFields.indexField = countList;
                                    fileNameFields.value = image.name
                                        .replaceAll("." + extension, "");
                                    fileNameFields.extension = extension;
                                    fileNameFields.fileType = "file";
                                    listFullFileName.add(fileNameFields);

                                    updateListAttach();
                                  });
                                } else {
                                  // User canceled the picker
                                }
                              },
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Color(0xFF353535),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.add_to_photos,
                                      size: 35,
                                      color: greyColor2,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Add File',
                                      style: TextStyle(
                                          color: greyColor2, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () async {
                                final result = await FilePicker.platform
                                    .pickFiles(
                                        type: FileType.custom,
                                        allowedExtensions: allowedExtensions,
                                        allowMultiple: true);

                                if (result != null) {
                                  List<PlatformFile> files =
                                      result.files.toList();
                                  FileUpload fileUpload =
                                      FileUpload(viewableUserData: []);
                                  files.forEach((element) async {
                                    File file = File(element.path.toString());
                                    fileList.add(file);
                                    countList++;
                                    fileUpload =
                                        FileUpload(viewableUserData: []);
                                    fileUpload.path = element.path.toString();
                                    fileUpload.type = 'file';
                                    fileUpload.file = file;
                                    listFilesUpload.add(fileUpload);

                                    setState(() {
                                      fileNameFields = FileNameFields();
                                      fileNameFields.indexField = countList;
                                      fileNameFields.value = element.name
                                          .replaceAll(
                                              "." + element.extension!, "");
                                      fileNameFields.extension =
                                          element.extension;
                                      fileNameFields.fileType = "file";
                                      listFullFileName.add(fileNameFields);

                                      updateListAttach();
                                    });
                                  });
                                } else {
                                  // User canceled the picker
                                }
                              },
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Color(0xFF353535),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.add_link,
                                      size: 35,
                                      color: greyColor2,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Add Link',
                                      style: TextStyle(
                                          color: greyColor2, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () async {
                                bool resultPopup =
                                    await _openPopupAddUrl(context);
                                if (resultPopup) {
                                  setState(() {
                                    updateListAttach();
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      // width: 500,
                      child: thumbnailList.length > 0
                          ? ListView(
                              children: [
                                ...thumbnailList,
                              ],
                            )
                          : Center(
                              child: Text(
                                "No attachments added",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: greyColor2),
                              ),
                            ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(greenColor),
                          ),
                          child: Text(
                            'CANCEL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          onPressed: () async {
                            setState(() {
                              thumbnailList = [];
                              fileList = [];
                              listFilesUpload = [];
                              countList = 0;
                              listFileName = [];
                              listFullFileName = [];
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(greenColor),
                          ),
                          child: Text(
                            'UPLOAD',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          onPressed: () async {
                            if (thumbnailList.length > 0) {
                              isAttach = true;
                              listFileName.forEach((element) {
                                if (element.value!.isEmpty) {}
                              });
                            } else {
                              isAttach = false;
                            }

                            // if (nameIsEmpy) {
                            //   await _openPopupNotification(
                            //       context, "The file name is empty!");
                            // } else {
                            //   widget.uploadAttachments!(
                            //       listFilesUpload,
                            //       listFileName,
                            //       _tabController!.index == 1
                            //           ? "private"
                            //           : "public");
                            //   Navigator.of(context).pop();
                            // }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }

  Future<bool> _openPopupNotification(context, String message) async {
    return Alert(
      context: context,
      style: alertStyle,
      title: "",
      type: AlertType.warning,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 300,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    message,
                    style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(greenColor),
                    alignment: Alignment.bottomRight),
                child: Text(
                  'OK',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    ).show().then((value) {
      return true;
    });
  }

  Widget getThumbnailBlack(String type, double sizeWidget, String extension) {
    if (type == "file") {
      if (extension == "pdf") {
        return Container(
          color: Color(0xFF353535),
          child: Icon(
            Icons.picture_as_pdf,
            color: Color(0xFF141414),
            size: sizeWidget,
          ),
        );
      } else if (extension == "doc" || extension == "docx") {
        return Container(
          color: Color(0xFF353535),
          child: Icon(
            Icons.document_scanner,
            color: Color(0xFF141414),
            size: sizeWidget,
          ),
        );
      } else {
        return Container(
          color: Color(0xFF353535),
          child: Icon(
            Icons.image,
            color: Color(0xFF141414),
            size: sizeWidget,
          ),
        );
      }
    } else {
      return Container(
        color: Color(0xFF353535),
        child: Icon(
          Icons.link,
          color: Color(0xFF141414),
          size: sizeWidget,
        ),
      );
    }
  }

  List<Widget> updateListAttach() {
    thumbnailList = [];
    listFileName = [];
    listFileName = listFullFileName;
    for (int i = 0; i < listFileName.length; i++) {
      thumbnailList.add(
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        child: getThumbnailBlack(
                            listFileName[i].fileType.toString(),
                            30,
                            listFileName[i].extension.toString())),
                  ),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        readOnly:
                            listFileName[i].extension == "url" ? true : false,
                        initialValue: listFileName[i].value,
                        style:
                            TextStyle(color: Color(0xFFEFEFEF), fontSize: 12),
                        cursorColor: Color.fromARGB(255, 16, 251, 6),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF282828),
                          focusColor: Color(0xFF282828),
                          contentPadding: EdgeInsets.all(6),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Chivo',
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(192, 196, 192, 1),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 16, 251, 6),
                                width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          listFileName[i].value = value;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (listFileName.length > 0) {
                                if (listFileName[i].extension == "file") {
                                  fileList.removeAt(i);
                                }
                              }
                              print("index: " + i.toString());

                              listFilesUpload.removeAt(i);
                              listFullFileName.removeAt(i);
                              countList--;
                            });
                            setState(() {
                              updateListAttach();
                            });

                            Navigator.pop(context);
                            _openPopupAttachments(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Color(0xFF282828),
                            size: 12,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 3,
              color: Color(0xFF141414),
            )
          ],
        ),
      );
    }

    return thumbnailList;
  }
}
