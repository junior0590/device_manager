import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:retrofit/retrofit.dart';
import 'package:project/utilities/services/rest_api_service.dart';
import 'package:project/utilities/services/navigatorKey_var_file.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:http_parser/http_parser.dart';

import '../classes/classes.dart';
import '../helpers/helpers.dart';
import '../services/entity.dart';
import '../services/entity/filters/saved_filter_list_entity.dart';

class AuthProvider {
  static request(String contentType, String token) async {
    final _testToken = await SharedPreferences.getInstance();

    String? bearer = "Bearer ";

    final tokenToSend = token;//bearer + _testToken.getString('token')!;

    final request = RestClient(
      Dio(
        BaseOptions(
          receiveDataWhenStatusError: true,
          connectTimeout: 1200 * 1000,
          receiveTimeout: 1200 * 1000,
          headers: {
            "Authorization": "Zoho-oauthtoken "+tokenToSend,
            "content-type": contentType,
            "accept": "*/*",
          },
        ),
      ),
    );

    return request;
  }

  Future<bool> loginUser(String email, String password, [String deviceName = "test123"]) async {
    //DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    // try {
    //   if (Platform.isAndroid) {
    //     var deviceData = await deviceInfo.androidInfo;
    //   } else if (Platform.isIOS) {
    //     var deviceData = await deviceInfo.iosInfo;
    //     deviceName = deviceData.name;
    //   }
    // } on PlatformException {
    //   deviceData = <String, dynamic>{
    //     'Error:': 'Failed to get platform version.'
    //   };
    // }

    final loginRequest = RestClient(
      Dio(
        BaseOptions(
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
          },
        ),
      ),
    );

    final storage = await SharedPreferences.getInstance();

    dynamic loginRoute = '/dashboard';

    try {
      final user = new User();

      user.email = email;
      user.password = password;
      user.deviceName = deviceName;

      ResponseData response = await loginRequest.loginUser(user);
      if (response.status == 200) {
        // _storage.write(key: "token", value: value.data["token"]),  Does not work on web version
        print({" +++++++++++++++++++++++++++++++++++++++++++++>>>>> TOKEN", response.data.token});
        print({" +++++++++++++++++++++++++++++++++++++++++++++>>>>> USER ID", response.data.id});
        storage.setString('token', response.data.token!);
        storage.setInt('userId', response.data.id!);
        storage.setString('userName', response.data.name.toString());

        globaldata.userId = response.data.id.toString();
        globaldata.userName = response.data.name.toString();
        globaldata.token = response.data.token!;
        storage.setBool("isLoggedIn", true);
        return true;
      } else {
        print({"Status:", response.status});
        return false;
      }
    } on DioError catch (e) {
      print("e.error: " + e.error.toString());
      print("e.message: " + e.message.toString());
      print("e.stackTrace: " + e.stackTrace.toString());
      print({e.response!.statusCode, " <------------------------------"});
      if (e.response!.statusCode == 422) {
        return false;
      }
      print({"DioError status response:", e.response!.statusCode});
      print({"DioError error:", e.error});
      print({"DioError type:", e.type.index});

      print(e.response!.statusCode);
      print(e.response!.data);
      print(e.response!.extra);
      print(e.response!.headers);
      print(e.response!.isRedirect);
      print(e.response!.realUri);
      print(e.response!.redirects);
      print(e.response!.requestOptions);
      print(e.response!.statusMessage);
      print(e.message);
      throw e;
    }
  }

  sendMessage(String device_id, String user_id) async {

    String currentToken = await getToken();
    Success? response;
    // Map<String, dynamic> body = {
    //   "device_ids": [
    //     device_id
    //   ]
    // };

    RestClient request = await AuthProvider.request("application/json;charset=UTF-8", currentToken);
    try {
      response = await request.sendMessage(device_id, user_id);
    } on DioError catch (e) {
      print({"DioError response:", e.response});
      print({"DioError error:", e.error});
      print({"DioError type:", e.type.index});

    } catch (err) {
      print(err);
    }

    return response;
  }

  sendAction(String device_id, String actionName, String user_id,  Map<String, dynamic> body) async {
    String currentToken = await getToken();
    Success? response;

    RestClient request = await AuthProvider.request("application/json;charset=UTF-8", currentToken);
    try {
      response = await request.sendAction(device_id, actionName, user_id, body);
    } on DioError catch (e) {
      print({"DioError response:", e.response});
      print({"DioError error:", e.error});
      print({"DioError type:", e.type.index});

    } catch (err) {
      print(err);
    }

    return response;
  }

  getLocation(String device_id, String user_id) async {
    String currentToken = await getToken();
    MapRecords? response;

    RestClient request = await AuthProvider.request("application/json;charset=UTF-8", currentToken);
    try {
      response = await request.getLocation(device_id, user_id);
    } on DioError catch (e) {
      print({"DioError response:", e.response});
      print({"DioError error:", e.error});
      print({"DioError type:", e.type.index});

    } catch (err) {
      print(err);
    }

    return response;
  }

 Future<String> getToken() async {

    try{
      String refresh_token = "1000.28d11bc6c61a0537e74ea24df5b1c656.a139ff7b75f9981c452e864a11af04a9";
      String client_id = "1000.M85ERJH29LRWN5I1W0U283RSQHSGYP";
      String client_secret = "1d9f9261e57fead70dd162b38ec224efde904683bd";
      String grant_type = "refresh_token";

      String url = "/v2/token?refresh_token="+refresh_token+
          "&client_id="+client_id+
          "&client_secret="+client_secret+"&grant_type=refresh_token";
      var dioRequest = Dio();
      dioRequest.options.headers = {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "Content-Type, Origin, Accept, token",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      };
      dioRequest.options.baseUrl = "https://accounts.zoho.com/oauth";

      var response = await dioRequest.post(
        url,
        data: "",
      );

      return response.data["access_token"];

    } catch (err) {
      return "Error";
    }

 }

}

class AppliedFilter {
  String? status;
}
