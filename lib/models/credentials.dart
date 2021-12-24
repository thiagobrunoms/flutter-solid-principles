class Credentials {
  final String username;
  final String password;

  Credentials({required this.username, required this.password});

  Map<String, dynamic> toMap() {
    return {'username': username, 'password': password};
  }

  get isValidUsername => username.isNotEmpty;

  get isValidPassword => password.isNotEmpty && password.length >= 5;
}
