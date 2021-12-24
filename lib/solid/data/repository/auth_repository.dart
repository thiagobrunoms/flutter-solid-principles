import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/datasource/i_authentication.dart';
import 'package:flutter_solid/solid/data/datasource/i_token_management.dart';
import 'package:flutter_solid/solid/domain/repository/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  IAuthDatasource datasource;
  final ITokenManagement tokenManagement;

  AuthRepository(this.datasource, this.tokenManagement);

  @override
  Future<User> login({dynamic credentials}) async {
    print('repository: login');
    return await datasource.login(credentials: credentials);
  }

  @override
  Future<bool> logout() async {
    return await datasource.logout();
  }
}
