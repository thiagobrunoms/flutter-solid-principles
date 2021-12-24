import 'dart:async';

import 'package:flutter_solid/fix-solid/authentication.dart';
import 'package:flutter_solid/fix-solid/connection/http_connections.dart';
import 'package:flutter_solid/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth implements Authentication<User, void> {
  GoogleSignIn? _googleSignIn;
  final HTTPConnection http;

  GoogleAuth(this.http) {
    _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
  }

  @override
  Future<User> signIn({void param}) async {
    try {
      GoogleSignInAccount? account = await _googleSignIn?.signIn();

      // print(account?.displayName);
      // print(account?.email);

      final GoogleSignInAuthentication? googleSignInAuthentication =
          await account?.authentication;

      // print("IdToken: ${googleSignInAuthentication?.idToken}");
      // print("Aceess token: ${googleSignInAuthentication?.accessToken}");

      Timer(
          Duration(
              seconds: await _getTokenTimeout(
                  googleSignInAuthentication?.accessToken)),
          signIn);

      return User(email: account?.email, name: account?.displayName);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<User> signOut({void param}) async {
    GoogleSignInAccount? account = await _googleSignIn?.signOut();
    return User(email: account?.email, name: account?.displayName);
  }

  Future<int> _getTokenTimeout(String? token) async {
    var response = await http.get('/oauth2/v3/tokeninfo?access_token=$token');

    int timeout = response['expires_in'];

    return timeout;
  }
}
