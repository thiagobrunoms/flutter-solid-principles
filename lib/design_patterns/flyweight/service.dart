import 'package:flutter_solid/design_patterns/flyweight/models/user.dart';

class Service {
  List<User> loadUsers() {
    return List.generate(100, (index) => User(id: index, name: 'User $index'));
  }
}
