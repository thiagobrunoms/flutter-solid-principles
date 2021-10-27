import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid/solid/data/datasource/facebook_sign_in.dart';
import 'package:flutter_solid/solid/data/datasource/google_sign_in.dart';
import 'package:flutter_solid/solid/data/datasource/username_password_authentication.dart';
import 'package:flutter_solid/solid/data/repository/auth_repository.dart';
import 'package:flutter_solid/solid/domain/usecases/facebook_signin_usecase.dart';
import 'package:flutter_solid/solid/domain/usecases/google_signin_usecase.dart';
import 'package:flutter_solid/solid/domain/usecases/username_password_login_usecase.dart';
import 'package:flutter_solid/solid/view/widgets/auth_controller.dart';
import 'package:flutter_solid/solid/view/widgets/login_button_widget.dart';
import 'package:flutter_solid/solid/view/widgets/my_textform_input.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  String? usernameErrorText;
  String? passwordErrorText;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late AuthController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            MyTextFormInput(
                label: 'Username',
                usernameController: usernameController,
                usernameErrorText: usernameErrorText),
            MyTextFormInput(
                label: 'Password',
                usernameController: passwordController,
                usernameErrorText: passwordErrorText),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoginButton(
                    callback: fireEmailPasswordLogin,
                    text: 'Email',
                    color: Colors.black),
                LoginButton(
                  callback: doGoogleLogin,
                  text: 'Google',
                  color: Colors.red,
                ),
                LoginButton(
                    callback: doFacebookLogin,
                    text: 'Facebook',
                    color: Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> doGoogleLogin() async {
    controller = AuthController(
        googleLoginUsecase: GoogleLoginUsecase(AuthRepository(GoogleAuth())));

    await controller.doGoogleLogin();
  }

  Future<void> doFacebookLogin() async {
    controller = AuthController(
        facebookLoginUsecase:
            FacebookLoginUsecase(AuthRepository(FacabookAuth())));

    await controller.doFacebookLogin();
  }

  Future<void> fireEmailPasswordLogin() async {
    if (!isEmailValid()) {
      setState(() {
        usernameErrorText = "Usuário inválido!";
      });
      return;
    }

    if (!isPasswordValid()) {
      setState(() {
        passwordErrorText = "Senha inválida!";
      });
      return;
    }

    doUsernamePasswordLogin();
  }

  bool isEmailValid() {
    return usernameController.text.isNotEmpty;
  }

  bool isPasswordValid() {
    return passwordController.text.isNotEmpty &&
        passwordController.text.length >= 5;
  }

  Future<void> doUsernamePasswordLogin() async {
    controller = AuthController(
        usernamePasswordLoginUsecase: UsernamePasswordLoginUsecase(
            AuthRepository(UsernamePasswordAuthentication(dio: Dio()))));

    await controller.doGoogleLogin();
  }
}
