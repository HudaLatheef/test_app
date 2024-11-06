import 'package:dio/dio.dart';

class ApiException implements Exception {
  List<String> getExceptionMessage(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.badResponse:
        return [
          "bad response error",
          "check api urls or parameters are invalid"
        ];

      case DioExceptionType.connectionError:
        return ["Connection Error", "Check Network Connectivity"];

      case DioExceptionType.connectionTimeout:
        return ["connectionTimeout", "Check Network Connectivity"];
      case DioExceptionType.cancel:
        return ["Request Cancelled", "Check Api Url Or Parameters are invalid"];

      default:
        return [
          "UnKnown Error",
          "Check other Api Url Or Parameters are invalid"
        ];
    }
  }
  // DioExceptions.fromDioError(DioError dioError) {
  //   switch (dioError.type) {
  //     case DioErrorType.CANCEL:
  //       message = "Request to API server was cancelled";
  //       break;
  //     case DioErrorType.CONNECT_TIMEOUT:
  //       message = "Connection timeout with API server";
  //       break;
  //     case DioErrorType.DEFAULT:
  //       message = "Connection to API server failed due to internet connection";
  //       break;
  //     case DioErrorType.RECEIVE_TIMEOUT:
  //       message = "Receive timeout in connection with API server";
  //       break;
  //     case DioErrorType.RESPONSE:
  //       message =
  //           _handleError(dioError.response.statusCode, dioError.response.data);
  //       break;
  //     case DioErrorType.SEND_TIMEOUT:
  //       message = "Send timeout in connection with API server";
  //       break;
  //     default:
  //       message = "Something went wrong";
  //       break;
  //   }
  // }

  // String message;

  // String _handleError(int statusCode, dynamic error) {
  //   switch (statusCode) {
  //     case 400:
  //       return 'Bad request';
  //     case 404:
  //       return error["message"];
  //     case 500:
  //       return 'Internal server error';
  //     default:
  //       return 'Oops something went wrong';
  //   }
  // }

  // @override
  // String toString() => message;
}
