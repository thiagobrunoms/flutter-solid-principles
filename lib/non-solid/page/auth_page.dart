import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  GoogleSignIn? _googleSignIn;

  @override
  void initState() {
    super.initState();

    _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
  }

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
              Flexible(
                child: ElevatedButton(
                  onPressed: fireLogin,
                  child: const Text('Email'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: () async {
                    print('google...');
                    try {
                      GoogleSignInAccount? account =
                          await _googleSignIn?.signIn();

                      print(account?.displayName);
                      print(account?.email);
                      print(account?.id);

                      final GoogleSignInAuthentication?
                          googleSignInAuthentication =
                          await account?.authentication;

                      print("IdToken: ${googleSignInAuthentication?.idToken}");

                      print(
                          "Aceess token: ${googleSignInAuthentication?.accessToken}");

                      Future.delayed(const Duration(seconds: 30), () {
                        print('signout');
                        _googleSignIn?.signOut();
                      });
                    } catch (error) {
                      print(error);
                    }
                  },
                  child: const Text('Google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: fireLogin,
                  child: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }

  Future<void> fireLogin() async {
    if (usernameController.text.isEmpty) {
      setState(() {
        usernameErrorText = "Usuário inválido!";
      });

      return;
    }
    if (passwordController.text.isEmpty || passwordController.text.length < 5) {
      setState(() {
        passwordErrorText = "Senha inválida!";
      });

      return;
    }

    Credentials credentials = Credentials(
        username: usernameController.text, password: passwordController.text);

    Dio d = Dio();
    var response =
        await d.post('api.domain/auth', data: json.encode(credentials.toMap()));

    String token = response.data['token'];
    saveToken(token);
  }

  Future<void> saveToken(String token) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setString('token', token);
  }
}
