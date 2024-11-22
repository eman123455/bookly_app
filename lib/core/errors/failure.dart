import 'package:dio/dio.dart';

abstract class Failure {
  final String errmsg;
  Failure({required this.errmsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errmsg});

  factory ServerFailure.fromDioError(DioException dioErro) {
    switch (dioErro.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errmsg: ' connection timeout ');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errmsg: ' sendTimeout occur ');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errmsg: ' recieveTimeout occur ');

      case DioExceptionType.badCertificate:
        return ServerFailure(errmsg: ' badCertificate occur ');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            statusCode: dioErro.response!.statusCode!,
            response: dioErro.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errmsg: ' request is canceled ');

      case DioExceptionType.connectionError:
        return ServerFailure(errmsg: ' connection error ');

      case DioExceptionType.unknown:
        if (dioErro.message!.contains('SocketException')) {
          return ServerFailure(errmsg: 'No internet connection');
        }
        return ServerFailure(errmsg: 'unexpected error , try again');
      default:
        return ServerFailure(errmsg: 'ops! there is an error');
    }
  }

  factory ServerFailure.fromBadResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errmsg: response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure(errmsg: 'internet server error');
    } else if (statusCode == 404) {
      return ServerFailure(errmsg: 'your request is not found');
    } else {
      return ServerFailure(errmsg: 'there was an error');
    }
  }
}
