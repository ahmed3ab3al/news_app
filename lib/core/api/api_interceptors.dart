import 'package:dio/dio.dart';

import '../cache/cache_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = 'application/json';
    options.headers['token'] = CacheHelper().getData(key: 'token');
    options.headers['Content-Type'] = 'application/json';
    super.onRequest(options, handler);
  }
}
