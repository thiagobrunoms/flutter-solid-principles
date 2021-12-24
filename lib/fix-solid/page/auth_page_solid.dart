import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid/fix-solid/auth/google_auth.dart';
import 'package:flutter_solid/fix-solid/auth/login_password_auth.dart';
import 'package:flutter_solid/fix-solid/authentication.dart';
import 'package:flutter_solid/fix-solid/connection/dio_connection.dart';
import 'package:flutter_solid/fix-solid/page/widgets/login_button_widget.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthPageSolid extends StatefulWidget {
  const AuthPageSolid({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AuthPageSolidState();
}

class AuthPageSolidState extends State<AuthPageSolid> {
  String? usernameErrorText;
  String? passwordErrorText;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Authentication? authentication;

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
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  labelText: 'Username', errorText: usernameErrorText),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password', errorText: passwordErrorText),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              LoginButtonWidget('Email',
                  color: Colors.black, callback: fireLogin),
              LoginButtonWidget('Google',
                  color: Colors.red, callback: fireGoogle),
              LoginButtonWidget('Facebook',
                  color: Colors.black, callback: fireLogin),
            ])
          ],
        ),
      ),
    );
  }

  Future<void> fireGoogle() async {
    print('fireGoogle');
    authentication = GoogleAuth(DioConnection('https://www.googleapis.com'));
    authentication?.signIn();
  }

  Future<void> fireLogin() async {
    print('fireLogin');
    Credentials credentials = Credentials(
        password: passwordController.text, username: usernameController.text);
    if (!credentials.isValidUsername) {
      setState(() {
        usernameErrorText = "Usuário inválido!";
      });

      return;
    }
    if (!credentials.isValidPassword) {
      setState(() {
        passwordErrorText = "Senha inválida!";
      });

      return;
    }

    print('fireLogin 2');
    authentication = LoginPasswordAuth(DioConnection('https://www.domain.com'));
    authentication?.signIn(param: credentials);
  }
}
