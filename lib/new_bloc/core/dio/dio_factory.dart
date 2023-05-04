import 'package:dio/dio.dart';
import 'logging_interceptor.dart';

class DioFactory {
  final String? baseUrl;
  final String? token;
  final String contentType;

  DioFactory({
    this.baseUrl,
    this.token,
    this.contentType = "application/json;charset=UTF-8",
  });

  DioFactory copyWith({
    String? baseUrl,
    String? token,
    String? contentType,
  }) =>
      DioFactory(
        baseUrl: "",//baseUrl ?? this.baseUrl,
        token: token ?? this.token,
        contentType: contentType ?? this.contentType,
      );

  // BaseOptions _createBaseOptions() => BaseOptions(
  //       baseUrl: _baseUrl,
  //       receiveTimeout: 5000,
  //       sendTimeout: 5000,
  //       connectTimeout: 5000,
  //     );

  BaseOptions _createBaseOptions() {
    print('[🔑 API KEY] [INIT] $token');

    return BaseOptions(
      baseUrl: "",//baseUrl!,
      receiveDataWhenStatusError: true,
      connectTimeout: 120 * 1000,
      receiveTimeout: 120 * 1000,
      headers: {
        "Authorization": 'Zoho-oauthtoken $token',
        "content-type": contentType,
        "accept": "application/json",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "Content-Type, Origin, Accept, token",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      },
    );
  }

  BaseOptions updateToken({String? token, String? baseUrl}) {
    print('[🔑 API KEY] [UPDATED] $token');
    print('[🔗 BASE URL] [UPDATED] $baseUrl');
    //print('[🔗 BASE URL] [OLD] '+this.baseUrl!);
    return BaseOptions(
      baseUrl: "",//baseUrl ?? this.baseUrl!,
      receiveDataWhenStatusError: true,
      connectTimeout: 120 * 1000,
      receiveTimeout: 120 * 1000,
      headers: {
        "Authorization": 'Zoho-oauthtoken $token',
        "content-type": contentType,
        "accept": "application/json",
      },
    );
  }

  Dio create() => Dio(_createBaseOptions())
    ..interceptors.addAll([
      LoggerInterceptor(),
    ]);
}
