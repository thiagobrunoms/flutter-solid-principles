import 'package:flutter_solid/models/token_model.dart';

abstract class ITokenManagement<T> {
  Future<Token> refresh(T refreshToken);
  Future<bool> save(T token);
}
