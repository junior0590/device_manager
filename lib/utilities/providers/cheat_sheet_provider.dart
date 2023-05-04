import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:project/utilities/services/entity/cheat_sheet/cheat_sheet_response_entity.dart';
import '../http_calls/auth_provider.dart';

class CheatSheetProvider with ChangeNotifier {

  AuthProvider httpCalls = AuthProvider();
  CheatSheetResponseEntity? cheatSheetRecords;

  CheatSheetResponseEntity? get allCheatSheetRecords {
    return cheatSheetRecords;
  }

  void setSelectItem(String financeOptions, bool select) {
    cheatSheetRecords!.data!.where((cheat) => cheat.finance_options == financeOptions).first.select = select;

    notifyListeners();
  }

}
