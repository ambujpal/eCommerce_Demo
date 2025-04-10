import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ecommerce_demo/services/app_exception.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // Get Method
  static Future<dynamic> getRequest(String url) async {
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
      ).timeout(const Duration(seconds: 10));

      return _handleResponse(response);
    } on SocketException {
      throw const SocketException("No Internet connection. Please try again.");
    } on TimeoutException {
      throw TimeoutException("Request timed out. Please try again.");
    } on FormatException {
      throw const FormatException("Invalid response format.");
    } catch (e) {
      throw Exception("Unexpected error: ${e.toString()}");
    }
  }

//Post method
  static Future<dynamic> postRequest(
      String url, Map<String, dynamic> bodyData) async {
    try {
      final response = await http
          .post(
            Uri.parse(url),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode(bodyData),
          )
          .timeout(const Duration(seconds: 10));

      return _handleResponse(response);
    } on SocketException {
      throw const SocketException("No Internet connection. Please try again.");
    } on TimeoutException {
      throw TimeoutException("Request timed out. Please try again.");
    } on FormatException {
      throw const FormatException("Invalid response format.");
    } catch (e) {
      throw Exception("Unexpected error: ${e.toString()}");
    }
  }

  static dynamic _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 404:
        throw NotFoundException("Resource not found");
      case 500:
      case 501:
      case 503:
        throw ServerException("Server error. Please try again later.");
      default:
        throw FetchDataException(
            "Unexpected error occurred: ${response.statusCode}");
    }
  }
}
