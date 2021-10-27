import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/domain/usecases/facebook_signin_usecase.dart';
import 'package:flutter_solid/solid/domain/usecases/google_signin_usecase.dart';
import 'package:flutter_solid/solid/domain/usecases/username_password_login_usecase.dart';

class AuthController {
  UsernamePasswordLoginUsecase? usernamePasswordLoginUsecase;
  GoogleLoginUsecase? googleLoginUsecase;
  FacebookLoginUsecase? facebookLoginUsecase;

  AuthController(
      {this.usernamePasswordLoginUsecase,
      this.googleLoginUsecase,
      this.facebookLoginUsecase});

  Future<void> doLogin(Credentials credentials) async {
    User user = await usernamePasswordLoginUsecase!.execute(credentials);
  }

  Future<void> doGoogleLogin() async {
    User user = await googleLoginUsecase!.execute(NoParam());
  }

  Future<void> doFacebookLogin() async {
    User user = await facebookLoginUsecase!.execute(NoParam());
  }
}
