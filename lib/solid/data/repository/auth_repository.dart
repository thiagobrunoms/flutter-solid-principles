import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';
import 'package:flutter_solid/solid/data/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  IAuthDatasource authentication;

  AuthRepository(this.authentication);

  @override
  Future<User> login({dynamic credentials}) async {
    return await authentication.login(credentials: credentials);
  }

  @override
  Future<bool> logout() async {
    return await authentication.logout();
  }
}
