import 'package:flutter_solid/models/token_model.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';

class FacabookAuth implements IAuthDatasource {
  @override
  Future<User> login({dynamic credentials}) async {
    print('datasource: login com facebook');
    return User(
      name: '',
      email: '',
    );
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
