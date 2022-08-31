import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:mars_rover_project/core/network/api_constants.dart';
import 'package:mars_rover_project/core/network/interceptor.dart';

class Http extends DioForNative {
  Http([BaseOptions? options]) : super(options) {
    options!.baseUrl = ApiConstants.baseUrl;
    options.connectTimeout = ApiConstants.connectTimeout;
    options.receiveTimeout = ApiConstants.receiveTimeout;
    options.responseType = ResponseType.json;
    options.validateStatus = (status) {
      return status! <= 500;
    };
    options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    interceptors.add(DioInterceptor());
  }
}
