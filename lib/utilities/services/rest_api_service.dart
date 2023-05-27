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


  @POST(globaldata.baseUrlHemaxvisoft+"/webApi2/api/custom/devices/sendMessage/{device_id}/{user_id}")
  Future<Success> sendMessage(
    @Path("device_id") String device_id,
    @Path("user_id") String user_id,
  );

  @POST(globaldata.baseUrlHemaxvisoft+"/webApi2/api/custom/devices/PostAction/{device_id}/{action_name}/{user_id}")
  Future<Success> sendAction(
      @Path("device_id") String device_id,
      @Path("action_name") String action_name,
      @Path("user_id") String user_id,
      @Body() Map<String, dynamic> body,
      );

  @GET(globaldata.baseUrlHemaxvisoft+"/webApi2/api/custom/devices/GetLocations/{device_id}/{user_id}")
  Future<MapRecords> getLocation(
      @Path("device_id") String device_id,
      @Path("user_id") String user_id,
      );

}
