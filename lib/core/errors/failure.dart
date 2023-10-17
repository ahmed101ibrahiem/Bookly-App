import 'package:dio/dio.dart';

abstract class Failure{
 final String message;
 Failure(this.message);
}
 class ServerFailure extends Failure{
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException e){
   switch(e.type){
     case DioExceptionType.connectionTimeout:
       return ServerFailure('ConnectionTimeout with api server');
     case DioExceptionType.sendTimeout:
      return ServerFailure('sendTimeout with ApiServer');
     case DioExceptionType.receiveTimeout:
      return ServerFailure('ReceiveTimeout with ApiServer');
     case DioExceptionType.badCertificate:
      return ServerFailure('BadCertificate with api server');
     case DioExceptionType.badResponse:
      /// most important
      ServerFailure.fromResponse(e.response!.statusCode, e.response!.data);
      return ServerFailure('ConnectionTimeout with api server');
     case DioExceptionType.cancel:
      return ServerFailure('Request to api server was canceled');
     case DioExceptionType.connectionError:
      return ServerFailure('No internet connection');
     case DioExceptionType.unknown:
      return ServerFailure('Opps there was error, please try again');
   }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response){
    if(statusCode == 404){
      return ServerFailure('Your request was not found, please try later');
    }else if(statusCode == 500){
      return ServerFailure('There is a problem with server, please try later');
    }
    else if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }
    else{
      return ServerFailure('There was an error please try again');
    }
  }
 }

