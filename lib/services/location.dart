import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;
  Location();
  // We can wait only those methods which are future
  Future<void> getLocation() async {
    // If we do Future<Position> the value of the position will be assigned in future and
    // It continue to print which will not print the lat lng but Instance of Future<Position>
    // But await will wait until value is assigned to the position and then continue to print()
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (ex) {
      print(ex);
    }
  }
}
