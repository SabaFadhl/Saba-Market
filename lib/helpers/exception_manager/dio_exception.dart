import 'package:dio/dio.dart';

import 'app_exception.dart';

class DioExceptionHandler extends AppExceptions {
  @override
  String handle(exception) {
    // TODO: implement handle
    DioException ex = exception as DioException;

    switch (ex.type) {
      case DioExceptionType.badResponse:
        if (ex.response != null) {
          return ex.response!.data["message"];
        }
        break;

      case DioExceptionType.connectionError:
        return "no internet";

      default:
        return "unknown exception";
    }

    return "error";
  }
}