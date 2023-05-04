import 'package:dio/dio.dart';

import '../services/entity/errors/error.dart';

class Failure {
  String message;
  Failure({this.message = ''});

  @override
  String toString() => message;

  String DioErrorConverter(DioError e) {
    if (e.type == DioErrorType.response) {
      // return 'UNKNOWN ERROR';
      print('🩹✨🩹 ${ErrorMessage.fromJson(e.response!.data).message!}');
      message =
          ErrorMessage.fromJson(e.response!.data).message ?? 'Unkown Error';
      // return ErrorMessage.fromJson(e.response!.data).message!;
    } else if (e.type == DioErrorType.connectTimeout) {
      message = 'Check your connection';
    } else if (e.type == DioErrorType.receiveTimeout) {
      message = 'Unable to connect to the server';
    } else if (e.type == DioErrorType.other) {
      message = 'Something went wrong';
    } else {
      message = 'Unkown error';
    }
    return message;
  }
}
