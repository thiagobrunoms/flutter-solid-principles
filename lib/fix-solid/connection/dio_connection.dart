import 'dart:collection';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_solid/fix-solid/connection/http_connections.dart';

class DioConnection implements HTTPConnection<HashMap, HashMap> {
  Dio? dio;

  DioConnection(String url) {
    dio = Dio();
    dio?.options.baseUrl = url;
  }

  @override
  Future<HashMap> get(String url) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<HashMap> post(String url, HashMap param) async {
    print('disparando requisição no Dio');
    var response = await dio?.post(url, data: param);

    return json.decode(response?.data);
  }
}
