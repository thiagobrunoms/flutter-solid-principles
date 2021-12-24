class Email {
  String value;

  Email._(this.value);

  factory Email.fromValue(String value) {
    if (value.isNotEmpty) {
      return Email._(value);
    } else {
      throw Exception('O email não pode ser vazio');
    }
  }
}
