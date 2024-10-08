class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Eror during communication:");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "invalid request:");
}

class UnauthorisedException extends AppException{
    UnauthorisedException([message]) : super(message, "unauthorised:");
}

class UnprocessableEntityException extends AppException{
    UnprocessableEntityException([message]) : super(message, "unprocessable entity:");
}

class InvalidInputException extends AppException{
    InvalidInputException([message]) : super(message, "invalid input:");
}
