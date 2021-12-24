import 'package:flutter_solid/models/user_model.dart';

abstract class IAuthRepository<T> {
  Future<User> login({T credentials});

  Future<bool> logout();
}
