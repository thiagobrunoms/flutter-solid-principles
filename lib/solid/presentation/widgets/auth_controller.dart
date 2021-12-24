import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/domain/usecases/i_login_usecase.dart';

class AuthController {
  ILoginUsecase iLoginUsecase;

  AuthController({required this.iLoginUsecase});

  Future<void> doLogin(Credentials credentials) async {
    print('controller: login com usuario/senha');
    User user = await iLoginUsecase.execute(credentials: credentials);
  }

  Future<void> doGoogleLogin() async {
    print('controller: login com google');
    User user = await iLoginUsecase.execute();
  }

  Future<void> doFacebookLogin() async {
    print('controller: login com facebook');
    User user = await iLoginUsecase.execute();
  }
}
