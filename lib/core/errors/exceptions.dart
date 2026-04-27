import 'package:dio/dio.dart';
import 'package:news_app/core/errors/error_model.dart';

class ServerExcption implements Exception {
  final ErrorModel errorModel;

  ServerExcption({required this.errorModel});
}

void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.cancel:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.unknown:
      throw ServerExcption(errorModel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 401:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 403:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 404:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 408:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 409:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 422:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 429:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 500:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 502:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 503:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );

        case 504:
          throw ServerExcption(
            errorModel: ErrorModel.fromjson(e.response!.data),
          );
      }
  }
}
