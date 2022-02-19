// ignore_for_file: unused_field, prefer_typing_uninitialized_variables

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "FetchDataException: \n");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Bad Request Exception: \n");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message])
      : super(message, "Unauthorised Exception: \n");
}

class TimeOutException extends AppException {
  TimeOutException([String? message]) : super(message, "Time Out Exception: ");
}

class ErroDesconhecidoException extends AppException {
  ErroDesconhecidoException([String? message])
      : super(message, "Erro Desconhecido Exception.\n");
}
