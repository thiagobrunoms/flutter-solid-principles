import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';

class FacabookAuth implements IAuthentication {
  @override
  Future<User> signIn() async {
    //TODO Facebook sign in
    return User(name: '', email: '');
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
