import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/utilities/services/entity/calendar/calendar_entity.dart';
import 'package:project/utilities/services/entity/response/general_response.dart';
import '../http_calls/auth_provider.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

import '../services/entity/calendar/accesible_meetings_entity.dart';

class CalendarProvider with ChangeNotifier {
  AuthProvider httpCalls = AuthProvider();
  CalendarEntity? _records;
  AccesibleMeetingsEntity? _accesibleMeetingsRecords;
  GeneralResponse? _generalResponse;

  CalendarEntity? get allRecords {
    return _records;
  }

  AccesibleMeetingsEntity? get allAccesibleMeetingsRecords {
    return _accesibleMeetingsRecords;
  }

}
