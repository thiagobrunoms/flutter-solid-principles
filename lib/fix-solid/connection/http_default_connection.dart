import 'dart:io';

import 'package:flutter_solid/fix-solid/connection/http_connections.dart';

class HttpDefaultConnection implements HTTPConnection {
  HttpRequest? http;

  @override
  Future get(String url) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post(String url, param) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
