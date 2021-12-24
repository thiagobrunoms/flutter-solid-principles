import 'dart:collection';

import 'package:flutter_solid/fix-solid/authentication.dart';
import 'package:flutter_solid/fix-solid/connection/http_connections.dart';
import 'package:flutter_solid/fix-solid/token_management.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';

class LoginPasswordAuth
    implements
        Authentication<User, Credentials>,
        TokenManagement<String, String> {
  final String url = 'domgin.com';
  final HTTPConnection http;

  LoginPasswordAuth(this.http);

  @override
  Future<User> signIn({Credentials? param}) async {
    print('fazendo signIn com login/senha');
    var response = await http.post("$url/signin", param);

    return User.fromMap(response);
  }

  @override
  Future<User> signOut({Credentials? param}) async {
    var response = await http.post("$url/signout", param);

    return User.fromMap(response);
  }

  @override
  Future<String> refreshToken({String? params}) async {
    var response = await http.post("$url/refresh", params);

    return response['token'];
  }
}
