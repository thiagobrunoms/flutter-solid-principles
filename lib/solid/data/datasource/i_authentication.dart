import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';

abstract class IAuthDatasource {
  Future<User> login({dynamic credentials});

  Future<bool> logout();
}
