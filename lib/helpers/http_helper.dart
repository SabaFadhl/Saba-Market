import 'package:dio/dio.dart';

class HttpHelper{
  Dio _dio = Dio();
  HttpHelper._();
  static HttpHelper? instance;
  static HttpHelper get getInstance{
    if(instance==null){
      instance=HttpHelper._();
    }
    return instance!;
  }

  Future<Response> getRequest({required String url}) async {
    return await _dio.get(url);
  }
  Future<Response> postRequest({required String url, required FormData data}){
    return _dio.get(url);
  }
}