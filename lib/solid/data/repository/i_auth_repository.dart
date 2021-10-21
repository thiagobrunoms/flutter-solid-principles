import 'package:flutter_solid/models/user_model.dart';

abstract class IAuthRepository {
  Future<User> signIn();

  Future<bool> logout();
}
