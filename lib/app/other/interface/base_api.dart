import 'dart:io';

import 'package:http/http.dart';

enum AppApiMethod {
  get,
  post,
  delete,
  patch,
  put,
}

enum AppApiType {
  dev,
  beta,
  prod,
}

abstract class BaseApi {
  Future<Response> call({
    required AppApiMethod method,
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  });

  Future<StreamedResponse> stream({
    Map<String, String>? body,
    Map<String, String>? headers,
    required File file,
    required String url,
    String? fieldFile,
  });
}
