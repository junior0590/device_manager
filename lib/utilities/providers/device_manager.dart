import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/utilities/services/entity/maps/maprecords.dart';
import 'package:project/utilities/services/entity/proposal_tool/electrical_upgrades_calculate_response.dart';
import 'package:project/utilities/services/entity/proposal_tool/proposal_edit_response.dart';
import 'package:project/utilities/services/entity/proposal_tool/proposal_tool_entity.dart';
import 'package:project/utilities/providers/device_manager.dart';
import '../http_calls/auth_provider.dart';
import '../services/entity/general/success.dart';
import '../services/entity/proposal_tool/proposal_index.dart';
import '../services/entity/proposal_tool/proposal_tool_signature.dart';
import '../services/entity/proposal_tool/proposal_tool_signature_response.dart';

class DeviceManagerProvider with ChangeNotifier {
  AuthProvider httpCalls = AuthProvider();
  ProposalToolEntity? proposalRecords;
  ProposalEditResponse? proposalEditRecords;

  Future<dynamic> sendMessage(String deviceId, String user_id) async {

    Success? result = await httpCalls.sendMessage(deviceId, user_id);

    if(result != null){
      if (result.status == 200) {
        return result;
      } else {
        print(result.status);
        return result.status;
      }
    }
  }

  Future<dynamic> sendAction(String deviceId, String actionName, String user_id,  Map<String, dynamic> body) async {

    Success? result = await httpCalls.sendAction(deviceId, actionName, user_id, body);

    if(result != null){
      if (result.status == 200) {
        return result;
      } else {
        print(result.status);
        return result.status;
      }
    }
  }

  Future<dynamic> getLocation(String deviceId, String user_id) async {

    MapRecords? result = await httpCalls.getLocation(deviceId, user_id);

    return result;
  }
}
