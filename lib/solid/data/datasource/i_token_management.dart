import 'package:flutter_solid/models/token_model.dart';

abstract class ITokenManagement {
  Future<Token> refresh();
  Future<bool> save(Token token);
}
