import 'dart:developer';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'entity.dart';
import 'entity/filters/saved_filter_list_entity.dart';

part 'rest_api_service.g.dart';

//@RestApi(baseUrl: "http://gizmo.local/api/mobile")
@RestApi(
    baseUrl: "") //"https://www.hytechgizmo.com/api/mobile")
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST(globaldata.baseUrl+"/login")
  Future<ResponseData> loginUser(@Body() User user);


  @POST(globaldata.baseUrl+"/api/v1/mdm/announcements/{announcement_id}/devices")
  Future<Success> sendMessage(
    @Path("announcement_id") String announcement_id,
    @Body() Map<String, dynamic> body,
  );

  @POST(globaldata.baseUrl+"/api/v1/mdm/devices/{device_id}/actions/{action_name}")
  Future<Success> sendAction(
      @Path("device_id") String device_id,
      @Path("action_name") String action_name,
      );

  @GET(globaldata.baseUrl+"/api/v1/mdm/devices/{device_id}/locations")
  Future<MapRecords> getLocation(
      @Path("device_id") String device_id,
      );

}
