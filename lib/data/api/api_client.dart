import 'dart:convert';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart' as Foundation;
import 'package:test_app/core/failures/error_response.dart';
import 'package:test_app/data/api/api_URL.dart';

class ApiClient {
  static final String noInternetMessage = 'connection_to_api_server_failed'.tr;
  final int timeoutInSeconds = 30;
  Future<http.Response> getData({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    String? url0;

    if (params == null) {
      url0 = url;
    } else {
      url0 = "$url?${Uri(queryParameters: params).query}";
    }
    final response = await http.get(
      Uri.parse(url0),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ).timeout(Duration(seconds: timeoutInSeconds));
    return response;
  }

  Future<http.Response> postData({
    required String url,
    Map<String, dynamic>? dataBody,
    Map<String, dynamic>? params,
  }) async {
    String url0;
    if (params != null) {
      url0 = "$url?${Uri(queryParameters: params).query}";
    } else {
      url0 = url;
    }
    final response = await http.post(
      Uri.parse(url0),
      body: jsonEncode(dataBody),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ).timeout(Duration(seconds: timeoutInSeconds));

    return response;
  }

  Future<Response> getData1(String url,
      {required Map<String, dynamic> query,
      required Map<String, String> headers}) async {
    try {
      if (Foundation.kDebugMode) {}
      final response = await http
          .get(Uri.parse(url), headers: headers)
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, url);
    } catch (e) {
      print('------------${e.toString()}');
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postData1(String uri, dynamic body,
      {required Map<String, String> headers}) async {
    try {
      if (Foundation.kDebugMode) {
        print('====> API Body: $body');
      }
      http.Response response = await http
          .post(
            Uri.parse(URLConstants.baseURL + uri),
            body: jsonEncode(body),
            headers: headers,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Response handleResponse(http.Response response, String uri) {
    dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (e) {}
    Response response0 = Response(
      body: body ?? response.body,
      bodyString: response.body.toString(),
      request: Request(
          headers: response.request!.headers,
          method: response.request!.method,
          url: response.request!.url),
      headers: response.headers,
      statusCode: response.statusCode,
      statusText: response.reasonPhrase,
    );
    if (response0.statusCode != 200 &&
        response0.body != null &&
        response0.body is! String) {
      if (response0.body.toString().startsWith('{errors: [{code:')) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(response0.body);
        response0 = Response(
            statusCode: response0.statusCode,
            body: response0.body,
            statusText: errorResponse.errors![0].message);
      } else if (response0.body.toString().startsWith('{message')) {
        response0 = Response(
            statusCode: response0.statusCode,
            body: response0.body,
            statusText: response0.body['message']);
      }
    } else if (response0.statusCode != 200 && response0.body == null) {
      response0 = Response(statusCode: 0, statusText: noInternetMessage);
    }
    if (Foundation.kDebugMode) {
      print(
          '====> API Response: [${response0.statusCode}] $uri\n${response0.body}');
    }
    return response0;
  }
}
