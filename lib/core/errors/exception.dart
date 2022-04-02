class MyException implements Exception {}

class ServerException extends MyException {
  final String message;

  ServerException({required this.message});
}
