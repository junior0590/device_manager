import 'package:flutter/foundation.dart';

class ConnectionProvider with ChangeNotifier {

  String? _connectivityType;

  set connectionType(String type) {
    _connectivityType = type;
  }

  bool verifyConnectionStatus(String type) {

    if(_connectivityType != type) {

      return true;

    } else {

      return false;

    }

  }

}