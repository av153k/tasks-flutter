import 'dart:io';

import 'package:dio/dio.dart';
import '../base/base_client_generator.dart';
import '../options/network_options.dart';

class NetworkCreator {
  static NetworkCreator shared = NetworkCreator();
  final Dio _client = Dio();

  Future<Response> request(
      {required BaseClientGenerator route, NetworkOptions? options}) {
    return _client.fetch(
      RequestOptions(
        path: route.path,
        baseUrl: route.baseUrl,
        method: route.method,
        queryParameters: route.queryParameters,
        headers: route.headers,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.receiveTimeout,
        onReceiveProgress: options!.onReceiveProgress,
        validateStatus: (status) =>
            (status! >= HttpStatus.ok && status <= HttpStatus.multipleChoices),
      ),
    );
  }
}
