class ApiException implements Exception {
  final String message;
  ApiException(this.message);
}

class BadRequestException extends ApiException {
BadRequestException(super.message);
}

class UnauthorisedException extends ApiException {
  UnauthorisedException(super.message);
}

class NotFoundException extends ApiException {
  NotFoundException(super.message);
}

class ServerException extends ApiException {
  ServerException(super.message);
}

class FetchDataException extends ApiException {
  FetchDataException(super.message);
}