import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/token_model.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';
import 'package:flutter_solid/solid/data/datasource/i_local_datasource.dart';
import 'package:flutter_solid/solid/data/datasource/i_token_management.dart';

class UsernamePasswordAuthentication
    implements IAuthDatasource<Credentials>, ITokenManagement<Token> {
  final Dio dio;
  ILocalDatasource? iLocalDatasource;

  UsernamePasswordAuthentication({required this.dio, this.iLocalDatasource});

  @override
  Future<User> login({Credentials? credentials}) async {
    print('datasource: login com login/senha');
    return User(
        email: 'thiago@gmas.com', token: Token(token: '12!@#'), name: 'Thiago');
    // try {
    //   var response =
    //       await dio.post('api.com', data: json.encode(credentials?.toMap()));

    //   return User.fromMap(response.data);
    // } on DioError catch (e) {
    //   throw e;
    // }
  }

  @override
  Future<bool> logout() async {
    print('do logout!');
    return true;
  }

  @override
  Future<bool> save(Token token) async {
    return await iLocalDatasource!.write(token.toMap());
  }

  @override
  Future<Token> refresh(Token refreshToken) {
    // TODO: implement refresh
    throw UnimplementedError();
  }
}
