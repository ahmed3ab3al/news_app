class ErrorModel {
  final String errorMessage;
  final int status;

  ErrorModel({required this.errorMessage, required this.status});

  factory ErrorModel.fromjson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errorMessage: jsonData['ErrorMessage'],
      status: jsonData['status'],
    );
  }
}
