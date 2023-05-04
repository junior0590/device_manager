import 'package:flutter/foundation.dart';
import 'package:project/utilities/classes/classes.dart';
import 'package:project/utilities/services/entity/design/design.dart';
import 'package:project/utilities/services/entity/response/general_response.dart';
import '../http_calls/auth_provider.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class DesignProvider with ChangeNotifier {
  AuthProvider httpCalls = AuthProvider();
  Design? _records;
  List<TransitionField> tfList = [];

  Design? get allRecords {
    return _records;
  }

}
