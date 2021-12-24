import 'package:flutter_solid/fix-solid/authentication.dart';
import 'package:flutter_solid/models/user_model.dart';

class AuthPageController<TParam> {
  Authentication? authentication;

  AuthPageController(this.authentication);

  Future<User?> signIn({TParam? param}) async {
    return await authentication?.signIn(param: param);
  }

  Future<User?> signOut({TParam? param}) async {
    return await authentication?.signOut(param: param);
  }
}
