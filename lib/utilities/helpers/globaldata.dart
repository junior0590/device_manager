import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/utilities/services/entity/design/design.dart';
import 'package:project/utilities/services/entity/notifications/notification_field.dart';
import 'package:project/utilities/services/entity/proposal_tool/proposal_edit_response.dart';
import 'package:project/utilities/services/entity/proposal_tool/proposal_tool_entity.dart';
import '../classes/hytech_url.dart';
import '../services/entity/calendar/accesible_meetings_entity.dart';
import '../services/entity/psegli_entity/pseg_form_entity.dart';
import '../services/entity/tasks/task_sort_fields.dart';

String userId='';
String userName = '';
String fullName = '';
String mobilePhone = '';
String homePhone = '';
String email = '';
String firstName = '';
String lastName = '';
String recID = '';
String designID = '';
String recIDNotification = '';
String currentModule = 'Leads';
String deviceID = '';
String currentModuleLabel = 'Leads';
const String font = 'Chivo';
String token = '';
HytechUrl hytechUrl = HytechUrl();
List<String> listOfTabs = [];

List<String>? allowedExtensions = [
  'jpg',
  'png',
  'pdf',
  'docx',
  'xls',
  'xlsx',
  'mov',
  'mp4'
];
List<String>? allowedFilesDesignExtensions = ['pdf'];
List<String>? allowedImageExtensions = ['jpg', 'png'];
List<String>? allowedAttachmensExtensions = ['pdf', 'docx', 'xls', 'xlsx', 'csv'];
List<String>? sortBy = ['Date', 'File Type', 'Name', 'Size'];
//List<TaskSortFields>? sortList = [];
List<TaskSortFields> sortList = [
  TaskSortFields("task_name", "asc", false),
  TaskSortFields("task_name", "desc", false),
  TaskSortFields("assigned_to", "asc", false),
  TaskSortFields("assigned_to", "desc", false),
  TaskSortFields("status", "asc", false),
  TaskSortFields("status", "desc", false),
  TaskSortFields("due_date", "asc", false),
  TaskSortFields("due_date", "desc", false),
];

enum PermissionRead { readOnly, readAndWrite }

enum FileAction { upload, create, read, update, delete }

enum NotifierState { initial, loading, loaded }

enum ResponseStateOld { sucess, error, warning, none }

enum APIConnectionState { none, loading, done, error }

String selectValueAttachments = "Date";
const greenColor = Color(0xFF10FB06);
const splashColour = Color(0xFF72ff56);
const greenColorLetter = Color(0xFF043301);
const greenLetter1 = Color.fromRGBO(7, 92, 2, 1);
const greenLetter2 = Color.fromRGBO(4, 51, 1, 1);
const green2 = Color.fromRGBO(13, 202, 5, 1);
const whiteLettersTabs = Color.fromRGBO(255, 255, 255, 1);
const iconColour = Color(0xFFEFEFEF);
const whiteLetters = Color.fromRGBO(255, 255, 255, 0.6);
const whiteLetters2 = Color.fromRGBO(255, 255, 255, 1);
const blackBackground1 = Color.fromRGBO(09, 09, 09, 1);
const blackBackground2 = Color(0xFF282828);
const listTileBackgroundColor = Color(0xFF353535);
const blackBackground3 = Color(0xFF141414);
const greyColor = Color(0xFFB7B7B7);
const blackBottomNavigationB = Color.fromRGBO(15, 15, 15, 1);
const blackRecordBottomBorder = Color.fromRGBO(20, 20, 20, 1);
final recordFormat = DateFormat("MMM d, y");
final formatDateExport = DateFormat("yyyyMMddHHmmss");
final formatDateTime = new DateFormat.MMMd('en_US').add_jm();
final formatDate = DateFormat("yyyy-MM-dd");
var format = new DateFormat.yMMMd('en_US').add_jm();
var formatNotiList = new DateFormat.yMMMd('en_US');
const Color greyColor2 = Color(0xFFB7B7B7);
const Color greyColor3 = Color(0xFF282828);
const Color darkColor = Color(0xFF141414);
bool isAttach = false;
int currentRecIdDownload = 0;
int indexShowFiles = 0;
int indexAttachTypeView = 1;
int indexAttachView = 0;
List<Map<String, dynamic>> mentionsList = [];
final kGoogleApiKey = "AIzaSyAuHrKDWpQaSU7wuyfaJDZu4j4UKdmXAKc";
double latitude = 0;
double longitude = 0;
Uint8List pinImage = Uint8List(0);
String mapAddress = "";
String mapCountry = "";
String mapState = "";
String mapZipCode = "";
List<NotificationField> noti = [];
String headerEmailPhone = "";
int initialIndexRecord = 0;
bool sendToNotification = false;
double sliderDiscreteValue = 0;
double roundCorner = 15;
bool isScreenNoInternet = false;
ProposalToolEntity? proposalEntity;
String defaultInverterType = "";
ProposalToolEntity? defaultRequestProposal;
ProposalEditResponse? proposalEditData;
List<ElectricalUpgradesEdit>? seleted_electrical_upgrades_edit;
List<ElectricalUpgrades>? seleted_electrical_upgrades;
//String? seleted_electrical_upgrades = "";
String proposalAction = "create";
int proposalID = 0;
List<String>? listUpgrades = [];
DesignRequest? designRequest;
List<AccesibleMeetingsFields> accesibleMeetingsList = [];
String selectType = "None";
String selectLeadSource = "Self Generated";
bool createDesign = true;
String pandaDocApiKey = "";
String connectionType = "startUp";
Map<String, dynamic> state_data = {};
String selectedEvent = "event summary";
bool ppwPrice = true;
bool price = false;
bool conEdisonNyc = false;
late BuildContext parentContext2;
late BuildContext mainContext;
const greenGradient = LinearGradient(
  colors: <Color>[
    Color(0xFF10FB06),
    Color(0XFF0DC005),
  ],
);

const disableGradient = LinearGradient(
  colors: <Color>[
    Color(0xFF282828),
    Color(0XFF191919),
  ],
);

PsegFormEntity? psegFormEntity;

const String baseUrl = "https://mdm.manageengine.com";
const String hostUrl = "https://mdm.manageengine.com";
const String baseUrlHemaxvisoft = "http://gsoftsolution.ddns.net";

const String baseUrlGoogleCalendar =
    "https://calendar.google.com/calendar/render?action=TEMPLATE&text=";

class Palette {
  static const MaterialColor hytech =
      MaterialColor(_hytechPrimaryValue, <int, Color>{
    50: Color(0xFFE2FFE1),
    100: Color(0xFFB7FEB4),
    200: Color(0xFF88FD83),
    300: Color(0xFF58FC51),
    400: Color(0xFF34FC2B),
    500: Color(_hytechPrimaryValue),
    600: Color(0xFF0EFA05),
    700: Color(0xFF0CFA04),
    800: Color(0xFF09F903),
    900: Color(0xFF05F802),
  });
  static const int _hytechPrimaryValue = 0xFF10FB06;

  static const MaterialColor hytechAccent =
      MaterialColor(_hytechAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_hytechAccentValue),
    400: Color(0xFFB9FFB8),
    700: Color(0xFF9FFF9F),
  });
  static const int _hytechAccentValue = 0xFF10FB06;

  static const int error = 0xFFc1123d;
  static const int warning = 0xFFffd33f;
  static const int success = 0xFF1fbd4f;
}
