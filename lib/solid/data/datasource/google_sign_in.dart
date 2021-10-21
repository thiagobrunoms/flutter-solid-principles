import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';

class GoogleAuth implements IAuthentication {
  @override
  Future<User> signIn() async {
    //TODO Google sign in
    return User(email: '', name: '');
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
