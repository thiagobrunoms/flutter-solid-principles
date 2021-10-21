import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/token_model.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';
import 'package:flutter_solid/solid/data/datasource/i_token_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsernamePasswordAuthentication
    implements IAuthentication, ITokenManagement {
  final Dio dio;
  final Credentials credentials;

  UsernamePasswordAuthentication(
      {required this.dio, required this.credentials});

  @override
  Future<User> signIn() async {
    try {
      var response =
          await dio.post('api.com', data: json.encode(credentials.toMap()));

      return User.fromMap(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Token> refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  Future<bool> save(Token token) async {
    SharedPreferences p = await SharedPreferences.getInstance();
    return p.setString('token', json.encode(token.toMap()));
  }
}
