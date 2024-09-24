import 'dart:io';

import 'package:http/http.dart';

import '../interface/base_api.dart';

class AppApi extends BaseApi {
  ///
  static final Client _http = Client();

  ///
  @override
  Future<Response> call({
    required AppApiMethod method,
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  }) async {
    final Uri uri = Uri.https('', url, params);

    final Map<String, String> headers = {};

    Response respone = switch (method) {
      AppApiMethod.get => await _http.get(uri, headers: headers),
      AppApiMethod.post => await _http.post(uri, body: body, headers: headers),
      AppApiMethod.delete => await _http.delete(uri, body: body, headers: headers),
      AppApiMethod.patch => await _http.patch(uri, body: body, headers: headers),
      AppApiMethod.put => await _http.put(uri, body: body, headers: headers),
    };

    return respone;
  }

  ///
  @override
  Future<StreamedResponse> stream({Map<String, String>? body, Map<String, String>? headers, required File file, required String url, String? fieldFile}) async {
    var request = MultipartRequest('POST', Uri.https('', url));

    request.files.add(await MultipartFile.fromPath(fieldFile ?? 'image', file.path));
    if (headers != null) request.headers.addAll(headers);
    request.headers.addAll({"Content-type": "multipart/form-data"});
    if (body != null) request.fields.addAll(body);
    return await request.send();
  }
}
