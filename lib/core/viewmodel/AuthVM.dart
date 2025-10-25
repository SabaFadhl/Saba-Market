import 'package:dio/dio.dart';
import 'package:saba_market/helpers/exception_manager/dio_exception.dart';

import '../../helpers/http_helper.dart';
import '../constants/api_routes.dart';

class AuthVM {
  // Singleton instance of HttpHelper
  HttpHelper _httpHelper = HttpHelper.getInstance;

  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    try {
      FormData loginInfo = FormData.fromMap({
        "email": email,
        "password": password,
      });

      final response = await _httpHelper.postRequest(
        url: ApiRoutes.LOGIN,
        data: loginInfo,
      );

      return response;
    } catch (e) {
      if (e is DioException){
        DioExceptionHandler ex = DioExceptionHandler();
        return ex.handle(e);
      }
    }
  }
}