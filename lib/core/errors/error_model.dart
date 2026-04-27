import 'package:news_app/core/api/end_points.dart';

class ErrorModel {
  final String errorMessage;
  final int status;

  ErrorModel({required this.errorMessage, required this.status});

  factory ErrorModel.fromjson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKeys.errorMessage],
      status: jsonData[ApiKeys.status],
    );
  }
}
