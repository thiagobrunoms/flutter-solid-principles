import 'package:flutter_solid/design_patterns/adapter/domain/i_location_management.dart';
import 'package:flutter_solid/design_patterns/adapter/domain/entities/location.dart';
import 'package:location/location.dart' as google;

class GoogleLocationManagerAdapter implements ILocationManagement {
  google.Location? googleLocation;

  GoogleLocationManagerAdapter() {
    googleLocation = google.Location.instance;
  }

  @override
  Future<Location> getLocation() async {
    google.LocationData? locationData = await googleLocation?.getLocation();

    return Location.fromMap({
      'latitude': locationData?.latitude,
      'longitude': locationData?.longitude
    });
  }
}
