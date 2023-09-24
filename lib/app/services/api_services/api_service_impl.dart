import 'dart:convert';

import 'package:adecco_task/app/exceptions/http_status_code_exception.dart';
import 'package:adecco_task/app/extensions/string_extension.dart';
import 'package:adecco_task/app/services/api_services/api_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiServiceImpl extends ApiService {
  String? _token;
  late Map<String, String> _headers;

  ApiServiceImpl({String? token}) {
    _token = token;
    _headers = {"Content-Type": "application/json"};
    if (_token != null) {
      _headers["Authorization"] = "Bearer ${_token!}";
    }
  }

  @override
  Future<http.Response> get({
    required String url,
    Map<String, String>? headers,
    String? queryParameters,
  }) async {
    http.Response response;
    url = "$url${queryParameters ?? ""}";
    try {
      response = await http.get(url.parsedUri, headers: headers ?? _headers);
      return getResponse(response: response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> post(
      {required String url,
      required Object body,
      Map<String, String>? headers,
      String? queryParameters}) async {
    http.Response response;
    debugPrint(url.parsedUri.toString());
    url = "$url${queryParameters ?? ""}";

    try {
      response =
          await http.post(url.parsedUri, body: jsonEncode(body), headers: headers ?? _headers);
      return getResponse(response: response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> patch(
      {required String url,
      required Object body,
      Map<String, String>? headers,
      String? queryParameters}) async {
    http.Response response;
    url = "$url${queryParameters ?? ""}";
    try {
      response =
          await http.patch(url.parsedUri, body: jsonEncode(body), headers: headers ?? _headers);
      return getResponse(response: response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> getResponse({required http.Response response}) async {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response;
    }
    throw HTTPStatusCodeException(response: response);
  }

  @override
  Future<http.Response> delete(
      {required String url, Map<String, String>? headers, String? queryParameters}) async {
    http.Response response;
    url = "$url${queryParameters ?? ""}";
    try {
      response = await http.delete(url.parsedUri, headers: headers ?? _headers);
      return getResponse(response: response);
    } catch (e) {
      rethrow;
    }
  }
}
