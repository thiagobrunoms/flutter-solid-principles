import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';
import 'package:flutter_solid/solid/data/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  IAuthentication authentication;

  AuthRepository(this.authentication);

  Future<User> signIn() async {
    return await authentication.signIn();
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
