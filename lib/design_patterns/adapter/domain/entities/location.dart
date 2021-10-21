class Location {
  final double latitude;
  final double longitude;

  Location({required this.latitude, required this.longitude});

  factory Location.fromMap(Map<String, dynamic> data) {
    return Location(latitude: data['latitude'], longitude: data['longitude']);
  }
}
