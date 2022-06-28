// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, curly_braces_in_flow_control_structures

import 'dart:io';

import 'package:shazam_clone/acr/base_network.dart';
import 'package:shazam_clone/acr/exceptions.dart';
import 'package:shazam_clone/acr/log.dart';
import 'package:dio/dio.dart';

class ApiHelper with BaseNetwork {
  Future<String> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    var responseJson;
    try {
      final response = await getData(
        url: url,
        headers: headers,
      );

      Log().debug(url, response.data);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } catch (e) {
      if (e is UnauthorisedException) Log().error(e.toString());
      rethrow;
    }
    return responseJson;
  }

  Future<Response> getRaw({
    required String url,
    Map<String, String>? headers,
  }) async {
    Response responseJson;
    try {
      final response = await getData(
        url: url,
        headers: headers,
      );

      Log().debug(url, response.data);
      responseJson = response;
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } catch (e) {
      if (e is UnauthorisedException) Log().error(e.toString());
      rethrow;
    }
    return responseJson;
  }

  Future<String> post({
    required String url,
    List<int>? passRange,
    bool throwError = false,
    Map<String, String>? headers,
    required Map<String, dynamic> body,
  }) async {
    var responseJson;
    try {
      Log().debug('body', body);
      final response = await postData(
        url: url,
        headers: headers,
        body: body,
      );
      print(response.data);
      if (!throwError) {
        if (passRange != null) {
          for (int item in passRange) {
            item == response.statusCode
                ? responseJson = response.data
                : throw response.data;
          }
        } else {
          responseJson = _returnResponse(response);
        }
      } else {
        return response.data;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } catch (e) {
      print(e.toString());
      if (e is UnauthorisedException) Log().error(e.toString());
      if (e.toString().toLowerCase().contains('time'))
        throw 'Sever Took too long to Respond';
      else
        rethrow;
    }
    return responseJson;
  }

  String _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        return (response.data.toString());
      case 422:
        return (response.data.toString());
      case 404:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
