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

  Future<dynamic> sendMessage(String deviceId, String announcement_id) async {

    Success? result = await httpCalls.sendMessage(deviceId, announcement_id);

    if(result != null){
      if (result.status == 200) {
        return result;
      } else {
        print(result.status);
        return result.status;
      }
    }
  }

  Future<dynamic> sendAction(String deviceId, String actionName) async {

    Success? result = await httpCalls.sendAction(deviceId, actionName);

    if(result != null){
      if (result.status == 200) {
        return result;
      } else {
        print(result.status);
        return result.status;
      }
    }
  }

  Future<dynamic> getLocation(String deviceId) async {

    MapRecords? result = await httpCalls.getLocation(deviceId);

    return result;
  }
}
