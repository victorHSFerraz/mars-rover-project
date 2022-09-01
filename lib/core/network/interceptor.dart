import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    log("<------------------------ ${options.method} ------------------------>");
    log("${options.baseUrl}${options.path}");
    log("<----------------------------------------------------->");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}
