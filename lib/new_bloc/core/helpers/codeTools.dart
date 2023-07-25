import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/utilities/controller/notification_controller.dart';
import 'package:project/utilities/providers/notifications.dart';
import 'package:project/utilities/services/entity/general/LocationData.dart';
import 'package:project/utilities/services/entity/notifications/notification_field.dart';
import 'package:project/utilities/services/entity/record/record.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/services/navigatorKey_var_file.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sn_progress_dialog/options/completed.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../utilities/constants.dart';
import 'helpers.dart';
import 'package:mime/mime.dart';

ProgressDialog? pd;
FirebaseFirestore? db;
StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? streamNotifications;

String dateTimeFormat(DateTime date) {
  final DateFormat formatterTime = DateFormat('yyyy-MM-ddTHH:mm:ss');
  final String formattedTime = formatterTime.format(date);

  return formattedTime;
}

String dateFormat(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(date);

  return formatted;
}

Widget getThumbnail(String type, double sizeWidget) {
  if (type == "pdf") {
    return Container(
      child: Icon(
        Icons.picture_as_pdf,
        color: Colors.white,
        size: 36.0,
      ),
    );
  } else if (type == "doc" || type == "docx") {
    return Container(
      child: Icon(
        Icons.document_scanner,
        color: Colors.white,
        size: 36.0,
      ),
    );
  } else if (type == "url") {
    return Container(
      child: Icon(
        Icons.link,
        color: Colors.white,
        size: 36.0,
      ),
    );
  } else {
    return Container(
      child: Icon(
        Icons.image,
        color: Colors.white,
        size: 36.0,
      ),
    );
  }
}

String getTextAvatar(Owner owner) {
  String text = '';
  if (owner.first_name != "") {
    text = text + owner.first_name.toString().substring(0, 1);
  }
  if (owner.last_name != "") {
    text = text + owner.last_name.toString().substring(0, 1);
  }

  return text;
}

String getTextInitialAvatar(String firstName, String lastName) {
  String text = '';
  if (firstName != '') text = text + firstName.toString().substring(0, 1);
  if (lastName != '') text = text + lastName.toString().substring(0, 1);

  return text;
}

Widget getMessagesByForm(List<Widget> messages) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      children: [...messages],
    ),
  );
}

bool isGoodResponse(int status) {
  bool result = false;

  if (status >= 200 && status <= 206) {
    result = true;
  }

  return result;
}

void updateBadgeApp() {
  FlutterAppBadger.updateBadgeCount(globaldata.noti
      .where((element) => element.isRead == false)
      .toList()
      .length);
}

void addNotificationsList(String json) {
  DateTime date;
  dynamic notificationField = jsonDecode(json);
  date = DateTime.parse(notificationField["date"]);
  NotificationField notification = NotificationField();
  notification.message = notificationField["message"];
  notification.originalDate = date;
  notification.date = date.day.toString() +
      "/" +
      date.month.toString() +
      "/" +
      date.year.toString();
  notification.isRead = false;
  notification.owner_type = notificationField["target"];
  notification.owner_id = notificationField["target_id"];
  if (notification.owner_type == "chats") {
    notification.module = "";
    notification.sender = notificationField["sender"];
  } else {
    notification.module = notificationField["module"];
    notification.sender = "";
  }

  globaldata.noti.add(notification);
  globaldata.sendToNotification = true;
  updateBadgeApp();
}

Map<String, String> getHeaderApi(String token) {
  Map<String, String> headersPost = {
    "Authorization": token,
    "content-type": "multipart/form-data",
    "accept": "application/json"
  };
  return headersPost;
}

Map<String, String> getHeaderApplicationApi(String token) {
  Map<String, String> headersPost = {
    "Authorization": token,
    "content-type": "application/json",
    "accept": "application/json"
  };
  return headersPost;
}

void showSnackBar(BuildContext context, String message,
    {String? label = "", void Function()? onPressed, Color? colour}) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: Duration(seconds: 3),
    // backgroundColor: colour ?? Theme.of(context).textTheme.bodyLarge!.color,
    action: SnackBarAction(
      label: label!,
      onPressed: onPressed == null ? () {} : onPressed,
    ),
    // onVisible: onVisible,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

String formatNumberFields(String? number) {
  print("number: " + number.toString());
  if (number != null && number != "") {
    return NumberFormat.currency(decimalDigits: 0, symbol: "")
        .format(double.parse(number.replaceAll(",", "")));
  } else {
    return "";
  }
}

String formatNumberFieldsByDigit(String? number, int digit) {
  if (number != null && number != "") {
    return NumberFormat.currency(decimalDigits: digit, symbol: "")
        .format(double.parse(number.replaceAll(",", "")));
  } else {
    return "";
  }
}

String formatNumberFieldsEditProposal(String? number) {
  print(number);
  if (number != null && number != "") {
    return NumberFormat.currency(decimalDigits: 0, symbol: "")
        .format(double.parse(number.replaceAll(",", "")));
  } else {
    return "";
  }
}

String formatIntNumberFieldsEditProposal(int? number) {
  print(number);
  if (number != null && number != "") {
    return NumberFormat.currency(decimalDigits: 0, symbol: "")
        .format(double.parse(number.toString()));
  } else {
    return "";
  }
}

void closeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

String validateFieldNull(dynamic field, bool isNumber, bool isDouble) {
  String newValue = "";
  if (field == "null") {
    field = "";
  }
  if (field != null) {
    if (field.toString().isNotEmpty) {
      if (isNumber && isDouble) {
        newValue = (double.tryParse(field) ?? 0).toStringAsFixed(2);
      } else if (isNumber) {
        newValue = (int.tryParse(field.toString().replaceAll(",", "")) ?? 0)
            .toString();
      } else if (isDouble) {
        newValue = (double.tryParse(field.toString().replaceAll(",", "")) ?? 0)
            .toString();
      } else {
        newValue = field.toString();
      }
    }
  }

  return newValue;
}

String validateFieldNullDashboard(dynamic field, bool isNumber, bool isDouble) {
  String newValue = "-";
  if (field != null) {
    if (field.toString().isNotEmpty) {
      if (isNumber && isDouble) {
        newValue = (double.tryParse(field) ?? 0).toStringAsFixed(2);
      } else if (isNumber) {
        newValue = (int.tryParse(field.toString().replaceAll(",", "")) ?? 0)
            .toString();
      } else if (isDouble) {
        newValue = (double.tryParse(field.toString().replaceAll(",", "")) ?? 0)
            .toString();
      } else {
        newValue = field.toString();
      }
    }
  }

  return newValue;
}

Future<LocationData> getCurrentPosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  LocationData locationData = new LocationData();

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    locationData.enabled = false;
    print('Location services are disabled.');
  } else {
    locationData.enabled = true;
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print('Location permissions are denied');
    } else {
      locationData.error = "Location permissions are denied";
    }
  } else {
    locationData.error = "Location permissions are denied";
  }

  if (permission == LocationPermission.deniedForever) {
    locationData.error =
        "Location permissions are permanently denied, we cannot request permissions.";
    print(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  locationData.longitude = position.longitude;
  locationData.latitude = position.latitude;
  locationData.error = "";
  print("position: " +
      position.latitude.toString() +
      ", " +
      position.longitude.toString());

  return locationData;
}

Future<void> getStates() async {
  globaldata.state_data = json.decode(
    await rootBundle.loadString('assets/map_states.json'),
  );
  print("test");
}

Future<bool> openMap(double latitude, double longitude) async {
  print(longitude.toString() + "  " + longitude.toString());
  String googleUrl =
      'comgooglemaps://?q=$latitude,$longitude&center=$latitude,$longitude&zoom=14';
  if (await canLaunchUrl(Uri.parse(googleUrl))) {
    await launchUrl(Uri.parse(googleUrl));
    return true;
  } else {
    return false;
//throw 'Could not open the map.';
  }
}

Future<bool> launchWazeMap(double lat, double lng) async {
  var url = 'waze://?ll=${'19.343537'},${'-70.595320'}';
  // var url = 'waze://ul?q=${'1016 washington avenue'}';
  //var url = 'https://waze.com/ul?ll=${lat.toString()},${lng.toString()}&navigate=yes';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
    return true;
  } else {
    return false;
  }
}

int getIntByString(String num) {
  int? n = 0;
  try {
    n = int.tryParse(num);
    if (n == null) {
      n = 0;
    }
  } catch (err) {
    print(err);
    n = 0;
  }

  return n;
}

double getDoubleByString(String num) {
  double? n = 0;
  num = num.replaceAll(",", "");
  try {
    n = double.tryParse(num);
    if (n == null) {
      n = 0;
    }
  } catch (err) {
    print(err);
    n = 0;
  }

  return n;
}

bool getBoolByString(String str, [bool strict = false]) {
  if (strict == true) {
    return str == '1' || str == 'true';
  }
  return str != '0' && str != 'false' && str != '';
}

String getFormatedDate(String date) {
  date = globaldata.format.format(DateTime.parse(date));

  return date;
}

String getFormatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

int getGridSize(double width) {
  return (width / 225).ceil();
}

int getNoteSize(double width) {
  return (width / 500).ceil();
}

//This function will be modified and deprecated in the near future, since we don't need a
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

Widget getImageFileExtension(
    String type, String extension, bool isImageAvailable,
    [double size = 20, String url = '']) {
  if (isImageAvailable) {
    return CachedNetworkImage(
      memCacheHeight: (size ~/ 2).toInt(),
      memCacheWidth: (size ~/ 2).toInt(),
      imageUrl: url,
      //  fit: BoxFit.fill,
      progressIndicatorBuilder: (context, url, downloadProgress) => Container(
        width: 35,
        height: 35,
        child: CircularProgressIndicator(
          value: downloadProgress.progress,
        ),
      ),
      errorWidget: (context, url, error) {
        return Icon(
          Icons.error,
          size: 30,
        );
      },
    );
  } else {
    if (type == "file") {
      if (extension == "pdf") {
        return Icon(
          Icons.picture_as_pdf,
          size: size,
          // color: globaldata.blackBackground2,
          // color: Color(0xFF141414),
        );
      } else if (extension == "doc" || extension == "docx") {
        return Icon(
          Icons.document_scanner,
          size: size,
          // color: globaldata.blackBackground2,
          // color: Color(0xFF141414),
        );
      } else if (extension == "txt") {
        return Icon(
          Icons.text_snippet_sharp,
          size: size,
          // color: globaldata.blackBackground2,
          // color: Color(0xFF141414),
        );
      } else {
        return Icon(
          Icons.image,
          size: size,
          // color: globaldata.blackBackground2,
          // color: Color(0xFF141414),
        );
      }
    } else {
      return Icon(
        Icons.link,
        size: size,
        // color: globaldata.blackBackground2,
        // color: Color(0xFF141414),
      );
    }
  }
}

Future<void> openUrl(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

String addHttpUrl(String url) {
  if (!url.contains("https") || !url.contains("http")) {
    url = "https://" + url;
  }

  return url;
}

Future<String?> pickDir(BuildContext context, Directory rootpath) async {
  String? path = null;
  // path = await FilesystemPicker.open(
  //   title: 'Save to folder',
  //   context: context,
  //   rootDirectory: rootpath,
  //   fsType: FilesystemType.folder,
  //   pickText: 'Save file',
  //   // folderIconColor: Colors.teal,
  //   requestPermission: () async => await Permission.storage.request().isGranted,
  // );

  String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
  if (selectedDirectory != null) {
    path = selectedDirectory;
  }

  return path;
}

String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

Future<bool> openPopupNotification(context, String message) async {
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

IconData getIconData(String extension) {
  if (extension == "pdf") {
    return Icons.picture_as_pdf;
  } else if (extension == "doc") {
    return Icons.document_scanner;
  } else if (extension == "docx") {
    return Icons.document_scanner;
  } else {
    return Icons.image;
  }
}

List<String> parseDataMentions(
  String mentions,
  List<String> mentionsIds,
  Map<String, dynamic> mentionMap,
) {
  int start = 0;
  int end = 0;
  String name = "";
  String id = "";
  List<String> data = [];

  while (mentions.contains("(__") || mentions.contains("__)")) {
    start = mentions.indexOf("(__");
    end = mentions.indexOf("__)");
    name = mentions.substring(start + 3, end);
    mentions = mentions.replaceRange(start, end + 3, "");

    start = mentions.indexOf("[__");
    end = mentions.indexOf("__]");
    mentionsIds.add(mentions.substring(start + 3, end).toString());
    id = mentions.substring(start + 3, end).toString();

    mentions = mentions.replaceRange(start, start + 3, "");
    end = mentions.indexOf("__]");
    mentions = mentions.replaceRange(end, end + 3, "");

    data.add('${id}_${name}');
    // print(id + " : " + name);
    //data.addAll({mentions.substring(start + 3, end).toString(): name});
  }
  // print('🍕 $name');
  // while (mentions.contains("[__") || mentions.contains("__]")) {
  //   start = mentions.indexOf("[__");
  //   end = mentions.indexOf("__]");
  //   mentionsIds.add(mentions.substring(start + 3, end).toString());

  //   mentions = mentions.replaceRange(start, start + 3, "");
  //   end = mentions.indexOf("__]");
  //   mentions = mentions.replaceRange(end, end + 3, "");
  // }

  // print('🍕 $data');
  // mentionsIds.forEach((element) {
  //   if (element.trim().isNotEmpty) {
  //     if (element.trim().length >= 3) {
  //       if (element.trim().substring(0, 3) == ":G:") {
  //         mentionMap = {'id': element.trim().substring(3), 'type': 'group'};
  //       } else {
  //         mentionMap = {'id': element.trim().substring(3), 'type': 'user'};
  //       }
  //     } else {
  //       mentionMap = {'id': element.trim().substring(3), 'type': 'user'};
  //     }
  //     listMentionsSend.add(mentionMap);
  //   }
  // });
  // mentions = mentions.replaceAll(":U:", "user_");
  // print("mentions: " + mentions);

  return data;
}

bool isEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

String getExtension(String path) {
  final mimeType = lookupMimeType(path);
  return mimeType!;
}

void clearAndSetSortByTaskList(String fieldName, String sort) {
  globaldata.sortList = [];
  // globaldata.sortList = [
  //   TaskSortFields("task_name", "asc", false),
  //   TaskSortFields("task_name", "desc", false),
  //   TaskSortFields("assigned_to", "asc", false),
  //   TaskSortFields("assigned_to", "desc", false),
  //   TaskSortFields("status", "asc", false),
  //   TaskSortFields("status", "desc", false),
  //   TaskSortFields("due_date", "asc", false),
  //   TaskSortFields("due_date", "desc", false),
  // ];

  globaldata.sortList
      .where((element) => element.name == fieldName && element.type == sort)
      .first
      .applied = true;
}

showProgressDialog(dynamic context, String msg, String messageCompleted) {
  pd = ProgressDialog(context: context);
  pd!.show(
    max: 100,
    msg: msg,
    progressType: ProgressType.valuable,
    backgroundColor: globaldata.blackBackground1,
    progressValueColor: globaldata.greenColor,
    progressBgColor: Colors.white70,
    msgColor: Colors.white,
    valueColor: Colors.white,
    completed: Completed(completedMsg: messageCompleted, completionDelay: 1500),
  );
}

updateProgressDialogMsg(String msg) {
  pd!.update(value: 0, msg: msg);
}

updateProgressDialog(int count, int total) {
  int progress = (((count / total) * 100).toInt());
  pd!.update(value: progress);
}

void initialStreamFirebase(String userID) {
  db = FirebaseFirestore.instance;
  print("UserID Fire: " + userID);
  if (streamNotifications != null) {
    streamNotifications!.cancel();
  }
  streamNotifications = db!
      .collection("users")
      .doc(userID)
      .collection("notifications")
      .snapshots()
      .listen(
    (event) {
      event.docs.forEach((element) async {
        print("type: "+element.get("type"));
        if(element.get("type") == "sign_out"){
          //Sign Out App
          final storage =
          await SharedPreferences.getInstance();
          storage.remove('token');
          storage.setBool('isLoggedIn', false);
          RouteKey.navigatorKey.currentState!.pushNamed('/login');
        } else {
          print(element.id);
          //show notification
          // showNotification(element.get("title"), element.get("message"),
          //     element.id, element.get("image_link"), element.get("type"));

          //add notification in the Notification Center
          Provider.of<Notifications>(globaldata.mainContext, listen: false)
              .addNewNotification(element);
        }

        //Delete notification
        db!
            .collection("users")
            .doc(userID)
            .collection("notifications")
            .doc(element.id)
            .delete();
      });
    },
    onError: (error) => print("Listen failed: $error"),
  );
}

// Future<void> showNotification(
//     String title, String body, String id, String imageLink, String type) async {
//   NotificationController.createNewNotification(title, body, id, imageLink, type);
// }

writeLog(String text, String filename) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/${filename}.txt');
  await file.writeAsString(text);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
