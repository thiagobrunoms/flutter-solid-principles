class Password {
  String value;

  Password._(this.value);

  factory Password.fromString(String value) {
    if (value.length >= 5) {
      return Password._(value);
    }

    throw Exception('A senha deve ter pelo menos 5 caracteres!');
  }
}
