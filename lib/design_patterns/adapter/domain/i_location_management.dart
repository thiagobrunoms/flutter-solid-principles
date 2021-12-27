import 'package:flutter_solid/design_patterns/adapter/domain/entities/location.dart';

abstract class ILocationManagement {
  Future<MyLocation> getLocation();
}
