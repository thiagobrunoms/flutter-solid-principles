import 'package:flutter_solid/models/token_model.dart';

class User {
  final String name;
  final String email;
  final Token token;

  User({required this.name, required this.email, required this.token});

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
        name: data['name'], email: data['email'], token: Token(token: 'aws!s'));
  }
}
