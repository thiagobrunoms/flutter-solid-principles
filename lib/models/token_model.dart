class Token {
  final String token;

  Token({required this.token});

  Map<String, dynamic> toMap() {
    return {'token': token};
  }
}
