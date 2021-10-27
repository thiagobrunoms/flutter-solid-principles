import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/token_model.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';

class GoogleAuth implements IAuthDatasource {
  @override
  Future<User> login({dynamic credentials}) async {
    return User(email: '', name: '', token: Token(token: 'to123a'));
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
