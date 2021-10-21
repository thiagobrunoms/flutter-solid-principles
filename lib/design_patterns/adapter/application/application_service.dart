import 'package:flutter_solid/design_patterns/adapter/domain/i_location_management.dart';
import 'package:flutter_solid/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_solid/design_patterns/adapter/domain/google_location_management_adapter.dart';
import 'package:flutter_solid/design_patterns/adapter/domain/location_service.dart';
import 'package:location/location.dart' as google;

class ApplicationService {
  LocationService? locationService;

  ApplicationService() {
    locationService = LocationService();
  }

  Future<Location?> getLocation() async {
    google.Location googleLocation = google.Location.instance;
    googleLocation.getLocation();

    GoogleLocationManagerAdapter locationManager =
        GoogleLocationManagerAdapter();

    return await locationService?.getLocation(locationManager);
  }
}
