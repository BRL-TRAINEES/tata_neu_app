import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<List<Placemark>> getAddressFromLatLng(Position position) async {
    return await placemarkFromCoordinates(position.latitude, position.longitude);
  }
}

final locationProvider = FutureProvider<Position>((ref) async {
  final locationService = LocationService();
  return await locationService.getCurrentLocation();
});

final addressProvider = FutureProvider<List<Placemark>>((ref) async {
  final position = await ref.watch(locationProvider.future);
  final locationService = LocationService();
  return await locationService.getAddressFromLatLng(position);
});



  