import 'package:flutter_solid/models/user_model.dart';

abstract class IAuthentication {
  Future<User> signIn();

  Future<bool> logout();
}
