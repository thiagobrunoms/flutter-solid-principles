import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';

abstract class IAuthDatasource<T> {
  Future<User> login({T credentials});

  Future<bool> logout();

  // Future<S> refreshToken(S token);
}
