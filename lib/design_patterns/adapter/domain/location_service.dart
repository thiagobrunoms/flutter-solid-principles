import 'package:flutter_solid/design_patterns/adapter/domain/i_location_management.dart';
import 'package:flutter_solid/design_patterns/adapter/domain/entities/location.dart';

class LocationService {
  Future<MyLocation> getLocation(ILocationManagement locationManagement) async {
    return await locationManagement.getLocation();
  }
}
