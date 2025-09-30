import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with the server. Please try again later.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Request send timeout. Unable to send data to the server.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Response timeout. Server took too long to respond.");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad SSL certificate. Can't establish a secure connection.");
      case DioExceptionType.badResponse:

        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled. Please try again.");
      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection. Please check your network.");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error occurred. Please try again.");
    }
  }
  factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode ==400|| statusCode ==401||statusCode ==403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode ==404){
        return ServerFailure('Your request not found, please try again later!');
    }else if(statusCode == 500){
      return ServerFailure("Internal Server Error, Please try later");
    }else{
      return ServerFailure("Opps There was an error please try again");
    }
  }
}
